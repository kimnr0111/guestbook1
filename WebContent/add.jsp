<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.javaex.dao.GuestDao" %>
<%@ page import="com.javaex.vo.GuestVo" %>

<%
	request.setCharacterEncoding("UTF-8");
	
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String contents = request.getParameter("contents");
	
	GuestVo guestVo = new GuestVo(name, password, contents);
	GuestDao guestDao = new GuestDao();
	guestDao.contentsInsert(guestVo);
	
	response.sendRedirect("./addList.jsp");
%>