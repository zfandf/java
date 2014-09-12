package cn.m15.app.android.gotransfer.net.httpserver;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.Set;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;

public class GowebNanoHTTPD extends NanoHTTPD {
	
	public static String verifyCode = "";
	public static final String WEB_WERSION = "2.0";
	public static final String MIME_DEFAULT_BINARY = "application/octet-stream";
	public static final int DEFAULT_HTTP_PORT = 8888;
	private static final int VERIFY_LENGHT = 4;
	private static String defaultHomePage = "index.html";
	private static String packageName = "cn.m15.app.android.gotransfer.net.httpserver.";
	private static String parentClassName = "ServeAction";
	private static Map<String, String> knownMimeTypes = new HashMap<String, String>(){{
		 	put("apk", "application/vnd.android.package-archive");
	        put("html", "text/html");
	        put("jpg", "image/jpeg");
	        put("png", "iamge/png");
	        put("gif", "image/gif");
	        put("css", "text/css");
	        put("js", "application/x-javascript");
	        put("json", "text/plain");
		}};
	private static Map<String, String> actionsMap = new HashMap<String, String>(){{
			put("verify", "Verify");
			put("file", "List");
			put("info", "PhoneInfo");
			put("create_dir", "CreateDir");
			put("delete", "Delete");
			put("copy", "CopyMove");
			put("move", "CopyMove");
			put("upload", "UploadFile");
			put("download", "Download");
			put("get_download", "GetDownload");
			put("get_country", "GetCountry");
			put("image", "Image");
			put("app_list", "AppList");
		
		}};
	private Context mContext; 

	public GowebNanoHTTPD(Context context) {
		super(DEFAULT_HTTP_PORT);
		this.mContext = context;
	}

	@SuppressLint("DefaultLocale")
	@Override
	public Response serve(IHTTPSession session) {
		Method method = session.getMethod();
		// Parse POST HTTP Body
		Map<String, String> files = new HashMap<String, String>();
		if (Method.POST.equals(method)) {
			try {
				session.parseBody(files);
			} catch (IOException e) {
				return this.serverError();
			} catch (ResponseException re) {
				return new Response(re.getStatus(), MIME_PLAINTEXT, re.getMessage());
			}
		}
		Map<String, String> params = session.getParms();
		
		if (null != params.get("action")) {
			String action = params.get("action").toLowerCase();
			Set<String> knowActions = actionsMap.keySet();
			Log.i(">>>>> web server action >>>>>>", action);
			if (knowActions.contains(action)) {
				Log.i(">>>>> web server action pass>>>>>>", action);
				String actionClass = actionsMap.get(action);
				try {
					Log.i(">>>>> web server action pass>>>>>>", packageName + actionClass + parentClassName);
					ServeAction serve = (ServeAction) Class.forName(packageName + actionClass + parentClassName).newInstance();
					return serve.response(mContext, params, files);
				} catch (Exception e) {
					e.printStackTrace();
					Log.i(">>>>> web server action redirect to >>>>>>", action);					
					return serverUnsupport();
				}
			}
		}
		try {
			return this.serverStaticFile(session.getUri());
		} catch (IOException e) {
			return this.serverError();
		}
	}

	private Response serverStaticFile(String uri) throws IOException {
		
		if (uri.equals("/")) {
			return serverStaticFile(uri + defaultHomePage);
		}
		
		InputStream input = this.mContext.getAssets().open("wwwroot" + uri);
		if (null != input) {
			return new Response(Response.Status.OK, getFileMimeType(uri), input);
		}
		return this.server404();		
	}
	
	@SuppressLint("DefaultLocale")
	private String getFileMimeType(String uri) {
		int dotPost = uri.lastIndexOf(".");
		String mime = null;
		if (dotPost > 0) {
			mime = knownMimeTypes.get(uri.substring(dotPost+1).toLowerCase());
		}
		return mime == null ? MIME_DEFAULT_BINARY : mime;
	}
	
	private Response serverUnsupport() {
		Response res = new Response(Response.Status.REDIRECT, MIME_PLAINTEXT, ServerMsg.getMsg(ServerMsg.ACTION_UNSUPPORT));
		res.addHeader("Location", defaultHomePage);
		return res;
	}
	
	private Response serverError() {
		return new Response(Response.Status.OK, MIME_PLAINTEXT, ServerMsg.getMsg(ServerMsg.SREVER_ERROR));		
	}
	
	private Response server404() {
		return new Response(Response.Status.NOT_FOUND, MIME_PLAINTEXT, "");				
	}
	
	public static String generateVerifyCode() {
    	StringBuilder verifiedCode = new StringBuilder();
    	Random rand = new Random();
    	for (int i = 0; i < VERIFY_LENGHT; i ++) {
    		verifiedCode.append(rand.nextInt(10));
    	}
    	String code = verifiedCode.toString();
    	GowebNanoHTTPD.verifyCode = code;
    	return code;
    }
}