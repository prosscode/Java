package org.pross.miniTomcat;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.HashMap;
import java.util.Map;

/**
 * @describe:
 * @author:彭爽pross
 * @date: 2018/10/20
 */
public class MyTomcat {
	private int port = 8888;
	private Map<String,String> urlServletMap = new HashMap<String, String>();
	public MyTomcat(int port){
		this.port = port;
	}

	public static void main(String[] args) {
		new MyTomcat(8888).start();
	}


	public void start(){
		//初始化
		initServletMapping();

		ServerSocket serverSocket = null;

		try {
			serverSocket = new ServerSocket(port);
			System.out.println("MyTomcat is start ...");

			while (true){
				Socket socket = serverSocket.accept();
				InputStream is = socket.getInputStream();
				OutputStream os = socket.getOutputStream();

				MyRequest myRequest = new MyRequest(is);
				MyResponse myResponse = new MyResponse(os);
				//请求分流
				dispatch(myRequest,myResponse);
				socket.close();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}finally {
			if(serverSocket != null){
				try {
					serverSocket.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

	private void dispatch(MyRequest myRequest,MyResponse myResponse) {
		String clazz = urlServletMap.get(myRequest.getUrl());

		//反射处理
		try {
			Class<MyServlet> myServletClass = (Class<MyServlet>) Class.forName(clazz);
			MyServlet myServlet = null;
			try {

				myServlet = myServletClass.newInstance();
				myServlet.service(myRequest,myResponse);
			} catch (InstantiationException e) {
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			}

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	private void initServletMapping() {
		for(ServletMapping servletMapping : ServletMappingConfig.servletMappingList){
			urlServletMap.put(servletMapping.getUrl(),servletMapping.getClazz());

		}
	}
}
