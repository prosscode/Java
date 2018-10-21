package org.pross.miniTomcat;


import java.util.ArrayList;
import java.util.List;

/**
 * @describe:
 * @author:彭爽pross
 * @date: 2018/10/20
 */
public class ServletMappingConfig {

	public static List<ServletMapping> servletMappingList = new ArrayList<ServletMapping>();

	static {
		servletMappingList.add(new ServletMapping("FindMsg","/msg","mytomcat.FindMsgServlet"));
		servletMappingList.add(new ServletMapping("HelloWorld","/hello","mytomcat.HelloWorldServlet"));
	}
}
