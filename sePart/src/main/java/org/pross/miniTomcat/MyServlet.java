package org.pross.miniTomcat;

/**
 * @describe:
 * @author:彭爽pross
 * @date: 2018/10/20
 */
public abstract class MyServlet {

	public  abstract void doGet(MyRequest myRequest,MyResponse myResponse);

	public  abstract  void doPost(MyRequest myRequest,MyResponse myResponse);

	public void service(MyRequest myRequest,MyResponse myResponse){
		if(myRequest.getMethod().equalsIgnoreCase("post")){
			doPost(myRequest,myResponse);
		}else if(myRequest.getMethod().equalsIgnoreCase("get")){
			doGet(myRequest,myResponse);
		}

	}
}
