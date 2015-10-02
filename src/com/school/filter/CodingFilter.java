package com.school.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class CodingFilter implements Filter{

	private String coding;
	@SuppressWarnings("unused")
	private FilterConfig filterConfig;
	@Override
	public void destroy() {
		this.filterConfig = null;
	}
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain) throws IOException,
			ServletException {
		request.setCharacterEncoding(coding);
		response.setCharacterEncoding(coding);
		filterChain.doFilter(request, response);
	}
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.filterConfig = filterConfig;
		this.coding = filterConfig.getInitParameter("coding");
	}
	
}
