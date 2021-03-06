<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
  <%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width">
<link rel="stylesheet" href="css/bootstrap.css">
<title>Web page!</title>
</head>
<body style="background-color: white;">


<%
String userID = null;
if(session.getAttribute("userID")!=null){
	userID = (String)session.getAttribute("userID");
}

%>

	<nav class="navbar navbar-inverse">
		<div class="navbar-header">
			<button type="button" 
			class="navbar-toggle collapsed"
			data-toggle="collapse" 
			data-target="#bs-example-navbar-collapse-1"
			aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">JSP 게시판</a>
		
		</div>
		<div class="collapse navbar-collapse" 
		     id="bs-example-navbar-collapse-1">
		     <ul class="nav navbar-nav">
		     	<li><a href="main.jsp">메인</a></li>
		     	<li class="active"><a href="bbs.jsp">게시판</a></li>
		     </ul>
		     
		     
		     <%
		     
		     if(userID==null){
		     
		     %>
		     
		     <ul class="nav navbar-nav navbar-right">
		     	<li class="dropdown">
		     		<a href="#" class="dropdown-toggle"
		     		data-toggle="dropdown" role="button"
		     		aria-haspopup="true"
		     		aria-expanded="false">접속하기<span class="caret">
		     		</span></a>
		     		<ul class="dropdown-menu">
		     			<li class="active"><a href="login.jsp">로그인</a></li>
		     			<li><a href="join.jsp">회원가입</a></li>
		     		</ul>
		     	</li>
		     </ul>
		     
		     <%
		     }else{
		     %>
		     
		     
		     <ul class="nav navbar-nav navbar-right">
		     	<li class="dropdown">
		     		<a href="#" class="dropdown-toggle"
		     		data-toggle="dropdown" role="button"
		     		aria-haspopup="true"
		     		aria-expanded="false">접속하기<span class="caret">
		     		</span></a>
		     		<ul class="dropdown-menu">
		     			<li class="active"><a href="logoutAction.jsp">로그아웃</a></li>
		     			
		     		</ul>
		     	</li>
		     </ul>
		     
		     <%
		     }
		     %>
		     
		</div>
	</nav>
	
	
	<div class = "container">
	
		<div class="row">
			<table class="table table-striped" 
			style="text-align:center; border:1px">
			<thead>
				<tr>
					<th style="text-align:center;">번호</th>
					<th style="text-align:center;">제목</th>
					<th style="text-align:center;">작성자</th>
					<th style="text-align:center;">날짜</th>
				</tr>
			</thead>
			
			<tbody>
				<tr>
					<td>1</td>
					<td>제목입니다!</td>
					<td>이름</td>
					<td>2020-8-10</td>
				</tr>
			</tbody>
			
			</table>
			
			<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
			
		</div>
	
	</div>
	
	

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>