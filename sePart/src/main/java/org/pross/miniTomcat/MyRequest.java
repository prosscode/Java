package org.pross.miniTomcat;

import java.io.IOException;
import java.io.InputStream;

/**
 * @describe:
 * @author:彭爽pross
 * @date: 2018/10/20
 */
public class MyRequest {
	private String url;
	private String method;

	//通过输入流对HTTP协议进行解析，拿到HTTP请求头的方法以及url
	public MyRequest(InputStream inputStream) throws IOException {
		String httpRequest="";
		byte[] httpRequestBytes = new byte[1024];
		int length = 0;
		if((length = inputStream.read(httpRequestBytes)) > 0){
			httpRequest = new String(httpRequestBytes,0,length);
		}

		/**
		 * HTTP请求协议
		 * GET /search?hl=zh-CN&source=hp&q=domety&aq=f&oq= HTTP/1.1
		 * Accept: image/gif, image/x-xbitmap, image/jpeg, image/pjpeg, application/vnd.ms-excel, application/vnd.ms-powerpoint,
		 * application/msword, application/x-silverlight, application/x-shockwave-flash, *
		 * Referer: <a href = "http://www.google.cn/" > http://www.google.cn/</a>
		 * Accept - Language:zh - cn
		 * Accept - Encoding:gzip, deflate
		 * User - Agent:Mozilla / 4.0 (compatible; MSIE 6.0;Windows NT 5.1;SV1; .NET CLR 2.0 .50727;TheWorld)
		 * Host: <a href = "http://www.google.cn" > www.google.cn </a >
		 * Connection:Keep - Alive
		 * Cookie:PREF = ID = 80 a06da87be9ae3c:U = f7167333e2c3b714:NW = 1:TM = 1261551909
		 */
		String httpHead = httpRequest.split("\n")[0];
		url = httpHead.split("\\s")[1];
		method = httpHead.split("\\s")[0];
		System.out.println(this);
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getMethod() {
		return method;
	}

	public void setMethod(String method) {
		this.method = method;
	}
}
