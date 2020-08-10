<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="bbs.BbsDao"%>
<%@page import="java.io.PrintWriter" %>
<jsp:useBean id="bbs" class ="bbs.Bbs" scope="page"/>
<jsp:setProperty name="bbs" property="bbsTitle"/>
<jsp:setProperty name="bbs" property="bbsContent"/>


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
	if(userID==null){

		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인이 필요합니다')");
		script.println("location.href='login.jsp'");
		script.println("</script>");
	}else{
		
		if(bbs.getBbsTitle()==null || bbs.getBbsContent()==null){
			
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('내용을 입력해주세요')");
			script.println("history.back()");
			script.println("</script>");
			
		}else{
			
			
			BbsDao bbsDao = new BbsDao();
			int result=bbsDao.write(bbs.getBbsTitle(),
					userID, bbs.getBbsContent());
			
			if(result == -1){
				
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('에러')");
				script.println("history.back()");
				script.println("</script>");
				
			}else{
				
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("location.href ='bbs.jsp'");
				script.println("</script>");
				
			}
			
			
		}
		
	}
	
	
	
	
	%>


</body>
</html>