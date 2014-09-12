package cn.m15.app.android.gotransfer.utils.images;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import cn.m15.app.android.gotransfer.BuildConfig;

public class LocalImageFetcher extends ImageResizer {
    private static final String TAG = "LocalImageFetcher";
    private static final int CACHE_SIZE = 10 * 1024 * 1024; // 10MB
    private static final String VEDIO_CACHE_DIR = "vedio";
    private static final int IO_BUFFER_SIZE = 8 * 1024;

    private DiskLruCache mDiskCache;
    private File mCacheDir;
    private boolean mDiskCacheStarting = true;
    private final Object mDiskCacheLock = new Object();
    private static final int DISK_CACHE_INDEX = 0;

    public LocalImageFetcher(Context context, int imageWidth, int imageHeight) {
        super(context, imageWidth, imageHeight);
        init(context);
    }

    public LocalImageFetcher(Context context, int imageSize) {
        super(context, imageSize);
        init(context);
    }

    private void init(Context context) {
        mCacheDir = ImageCache.getDiskCacheDir(context, VEDIO_CACHE_DIR);
    }

    @Override
    protected void initDiskCacheInternal() {
        super.initDiskCacheInternal();
        initLocalImageDiskCache();
    }

    private void initLocalImageDiskCache() {
        if (!mCacheDir.exists()) {
            mCacheDir.mkdirs();
        }
        synchronized (mDiskCacheLock) {
            if (ImageCache.getUsableSpace(mCacheDir) > CACHE_SIZE) {
                try {
                    mDiskCache = DiskLruCache.open(mCacheDir, 1, 1, CACHE_SIZE);
                    if (BuildConfig.DEBUG) {
                        Log.d(TAG, "Vedio picture cache initialized");
                    }
                } catch (IOException e) {
                    mDiskCache = null;
                }
            }
            mDiskCacheStarting = false;
            mDiskCacheLock.notifyAll();
        }
    }

    @Override
    protected void clearCacheInternal() {
        super.clearCacheInternal();
        synchronized (mDiskCacheLock) {
            if (mDiskCache != null && !mDiskCache.isClosed()) {
                try {
                    mDiskCache.delete();
                    if (BuildConfig.DEBUG) {
                        Log.d(TAG, "HTTP cache cleared");
                    }
                } catch (IOException e) {
                    Log.e(TAG, "clearCacheInternal - " + e);
                }
                mDiskCache = null;
                mDiskCacheStarting = true;
                initLocalImageDiskCache();
            }
        }
    }

    @Override
    protected void flushCacheInternal() {
        super.flushCacheInternal();
        synchronized (mDiskCacheLock) {
            if (mDiskCache != null) {
                try {
                    mDiskCache.flush();
                    if (BuildConfig.DEBUG) {
                        Log.d(TAG, "Vedio cache flushed");
                    }
                } catch (IOException e) {
                    Log.e(TAG, "flush - " + e);
                }
            }
        }
    }

    @Override
    protected void closeCacheInternal() {
        super.closeCacheInternal();
        synchronized (mDiskCacheLock) {
            if (mDiskCache != null) {
                try {
                    if (!mDiskCache.isClosed()) {
                        mDiskCache.close();
                        mDiskCache = null;
                        if (BuildConfig.DEBUG) {
                            Log.d(TAG, "HTTP cache closed");
                        }
                    }
                } catch (IOException e) {
                    Log.e(TAG, "closeCacheInternal - " + e);
                }
            }
        }
    }

    /**
     * The main process method, which will be called by the ImageWorker in the AsyncTask background
     * thread.
     *
     * @param data The data to load the bitmap, in this case, a regular http URL
     * @return The downloaded and resized bitmap
     */
    private Bitmap processBitmap(String data) {
        if (BuildConfig.DEBUG) {
            Log.d(TAG, "processBitmap - " + data);
        }

        final String key = ImageCache.hashKeyForDisk(data);
        FileDescriptor fileDescriptor = null;
        FileInputStream fileInputStream = null;
        DiskLruCache.Snapshot snapshot;
        synchronized (mDiskCacheLock) {
            // Wait for disk cache to initialize
            while (mDiskCacheStarting) {
                try {
                    mDiskCacheLock.wait();
                } catch (InterruptedException e) {}
            }

            if (mDiskCache != null) {
                try {
                    snapshot = mDiskCache.get(key);
                    if (snapshot == null) {
                        if (BuildConfig.DEBUG) {
                            Log.d(TAG, "processBitmap, not found in local image cache, downloading...");
                        }
                        DiskLruCache.Editor editor = mDiskCache.edit(key);
                        if (editor != null) {
                            if (downloadLocalImage(data, editor.newOutputStream(DISK_CACHE_INDEX))) {
                                editor.commit();
                            } else {
                                editor.abort();
                            }
                        }
                        snapshot = mDiskCache.get(key);
                    }
                    if (snapshot != null) {
                        fileInputStream = (FileInputStream) snapshot.getInputStream(DISK_CACHE_INDEX);
                        fileDescriptor = fileInputStream.getFD();
                    }
                } catch (IOException e) {
                    Log.e(TAG, "processBitmap - " + e);
                } catch (IllegalStateException e) {
                    Log.e(TAG, "processBitmap - " + e);
                } finally {
                    if (fileDescriptor == null && fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e) {}
                    }
                }
            }
        }

        Bitmap bitmap = null;
        if (fileDescriptor != null) {
            bitmap = decodeSampledBitmapFromDescriptor(fileDescriptor, mImageWidth,
                    mImageHeight, getImageCache());
        }
        if (fileInputStream != null) {
            try {
                fileInputStream.close();
            } catch (IOException e) {}
        }
        return bitmap;
    }
    
    private Bitmap processBitmapWithoutCache(String data) {
        if (BuildConfig.DEBUG) {
            Log.d(TAG, "processBitmap - " + data);
        }

        Bitmap bitmap = decodeSampledBitmapFromFile(data, 3 * mImageWidth, 3 * mImageHeight, null); 
        if (bitmap != null) {
        	bitmap = Bitmap.createScaledBitmap(bitmap, mImageWidth, mImageWidth, true);        	
        }
        return bitmap;
    }

    @Override
    protected Bitmap processBitmap(Object data) {
    	if (mDiskCache == null) {
    		return processBitmapWithoutCache(String.valueOf(data));
    	} else {
    		return processBitmap(String.valueOf(data));    		
    	}
    }

	public boolean downloadLocalImage(String path, OutputStream outputStream) {
		Bitmap bitmap = decodeSampledBitmapFromFile(path, 3 * mImageWidth, 3 * mImageHeight, null); 
        
		Log.d(TAG, "downlload bitmap >>> " +bitmap);
        if (bitmap == null) return false;
        
        // Scale down the bitmap if it's too large.
        bitmap = Bitmap.createScaledBitmap(bitmap, mImageWidth, mImageWidth, true);

        ByteArrayOutputStream baos = null; 
        try {
        	baos = new ByteArrayOutputStream(); 
			int options = 100;
			bitmap.compress(Bitmap.CompressFormat.JPEG, options, baos);
			int imageSize = baos.toByteArray().length;
			while (imageSize > IO_BUFFER_SIZE) { // > 8KB
				options -= 10;
				baos.reset();
				bitmap.compress(Bitmap.CompressFormat.JPEG, options, baos);
				imageSize = baos.toByteArray().length;
			}
			outputStream.write(baos.toByteArray());
			return true;
		} catch (IOException e) {
		} finally {
			bitmap.recycle();
			try {
				if (baos != null) {
					baos.close();
				}
			} catch (IOException e) {
			}
		}
        return false;
    }
	
}
