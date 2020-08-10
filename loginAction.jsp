<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<jsp:useBean id="user" class="user.User" scope="page"/>
<jsp:setProperty name="user" property="userID"/>
<jsp:setProperty name="user" property="userPassword"/>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 
String userID = null;
if(session.getAttribute("userID")!=null){
	userID = (String)session.getAttribute("userID");
}
if(userID!=null){

	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('이미로그인됨')");
	script.println("location.href='main.jsp'");
	script.println("</script>");

}

UserDAO userDAO = new UserDAO();
int result = userDAO.login(user.getUserID(),user.getUserPassword());

if(result==1){
	session.setAttribute("userID",user.getUserID());
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("location.href='main.jsp'");
	script.println("</script>");
}else if(result==0){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('비밀번호 확인 해주셍.')");
	script.println("history.back()");
	script.println("</script>");
}else if(result==-1){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('존재하지 않는 아이디')");
	script.println("history.back()");
	script.println("</script>");
}else if(result==-2){
	PrintWriter script = response.getWriter();
	script.println("alert('error.')");
	script.println("history.back()");
	script.println("</script>");
}





%>





</body>
</html>