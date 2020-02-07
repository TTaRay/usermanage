package com.citywy.filter;

import javax.servlet.*;
import java.io.IOException;

public class LoginFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("进来");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        System.out.println("dofilter方法");
        chain.doFilter(request,response);
    }


    @Override
    public void destroy() {

    }
}
