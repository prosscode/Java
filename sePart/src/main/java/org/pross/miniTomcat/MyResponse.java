package org.pross.miniTomcat;

import java.io.IOException;
import java.io.OutputStream;

/**
 * @describe:
 * @author:彭爽pross
 * @date: 2018/10/20
 */
public class MyResponse {
	private OutputStream outputStream;

	public MyResponse(OutputStream outputStream){
		this.outputStream = outputStream;
	}

	//基于HTTP协议的格式进行输出写入
	public void write(String content) throws IOException {
		/**
		 * HTTP响应协议
		 *
		 * HTTP/1.1 200 OK
		 * Content-Type : text/html
		 * <html><body>
		 *
		 * </body></html>
		 */
		StringBuffer httpResponse = new StringBuffer();
		httpResponse.append("HTTP/1.1 200 OK\n").append("Content-Type : text/html\n")
				.append("\r<html><body>").append(content).append("</body></html>");

		outputStream.write(httpResponse.toString().getBytes());
		outputStream.close();
	}
}
