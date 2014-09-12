package cn.m15.app.android.gotransfer.net.httpserver;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Map;

import org.json.JSONException;

import cn.m15.app.android.gotransfer.net.httpserver.NanoHTTPD.Response;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Bitmap.CompressFormat;
import android.media.ThumbnailUtils;

public class ImageServeAction extends ServeAction {

	@Override
	protected Response response(Context mContext, Map<String, String> params,
			Map<String, String> files) throws JSONException {
		String path = params.get("path");
		if (null != path) {
			FileInputStream fis = null;
			try {
				fis = new FileInputStream(path);
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			}
			Response response = new Response(Response.Status.OK, "image/jpeg",
					fis);
			response.addHeader("Content-Length", "" + new File(path).length());
			return response;
		}
		return null;
	}

	@SuppressWarnings("unused")
	private String generateCenteredThumbnail(String path) {

		String thumbnail = "";
		int targetWidth = 200;
		Bitmap image = BitmapFactory.decodeFile(path);
		double scale = image.getWidth() / image.getHeight();

		image = ThumbnailUtils.extractThumbnail(image, targetWidth,
				(int) (targetWidth / scale));

		FileOutputStream outputStream = null;
		try {
			outputStream = new FileOutputStream(new File(
					"/storage/emulated/0/1/s.jpg"));
			image.compress(CompressFormat.JPEG, 100, outputStream);
			outputStream.flush();
			outputStream.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return thumbnail;
	}
}
