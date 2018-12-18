package cn.niit.filter.demo;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class CharacterFilter implements Filter {

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request2 = (HttpServletRequest) request;
		HttpServletResponse response2 = (HttpServletResponse) response;
		//拦截所有请求 解决全站中文乱码
		//指定request和response的编码
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		//对request进行包装
		CharacterRequest characterRequest = new CharacterRequest(request2);
		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

}
class CharacterRequest extends HttpServletRequestWrapper{
private HttpServletRequest request;
	public CharacterRequest(HttpServletRequest request) {
		super(request);
		this.request = request;
	}
	public String getParameter(String name){
		 
		String value = super.getParameter(name);
		if(value == null)
			return null;
			//判断请求方式
		 String method = super.getMethod();
			if ("get".equalsIgnoreCase(method)) {
				try{
					value = new String(value.getBytes("iso-8859-1"),"utf-8");
				}catch (UnsupportedEncodingException e) {
					throw new RuntimeException(e);
				}
			}
			return value;
	}
	
}
