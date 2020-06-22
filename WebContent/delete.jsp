<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.javaex.dao.GuestDao" %>
<%@ page import="com.javaex.vo.GuestVo" %>

<%
	request.setCharacterEncoding("UTF-8");

	String password = request.getParameter("password");
	int no = Integer.parseInt(request.getParameter("no"));
	
	GuestDao guestDao = new GuestDao();
	guestDao.guestDelete(password, no);
	
	response.sendRedirect("./addList.jsp");
%>
