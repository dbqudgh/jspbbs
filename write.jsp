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
			<a class="navbar-brand" href="main.jsp">JSP �Խ���</a>
		
		</div>
		<div class="collapse navbar-collapse" 
		     id="bs-example-navbar-collapse-1">
		     <ul class="nav navbar-nav">
		     	<li><a href="main.jsp">����</a></li>
		     	<li class="active"><a href="bbs.jsp">�Խ���</a></li>
		     </ul>
		     
		     
		     <%
		     
		     if(userID==null){
		     
		     %>
		     
		     <ul class="nav navbar-nav navbar-right">
		     	<li class="dropdown">
		     		<a href="#" class="dropdown-toggle"
		     		data-toggle="dropdown" role="button"
		     		aria-haspopup="true"
		     		aria-expanded="false">�����ϱ�<span class="caret">
		     		</span></a>
		     		<ul class="dropdown-menu">
		     			<li class="active"><a href="login.jsp">�α���</a></li>
		     			<li><a href="join.jsp">ȸ������</a></li>
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
		     		aria-expanded="false">�����ϱ�<span class="caret">
		     		</span></a>
		     		<ul class="dropdown-menu">
		     			<li class="active"><a href="logoutAction.jsp">�α׾ƿ�</a></li>
		     			
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
			<form method="post" action=writeAction.jsp">
				
				<table class="table table-striped" 
			style="text-align:center; border:1px">
			<thead>
				<tr>
					<th colspan="2" style="text-align:center;">�۾���</th>
				</tr>
			</thead>
			
			<tbody>
				<tr>
					<td> <input type="text" class="form-control" placeholder="������" name="bbsTitle"
					maxlength="50"></td>
					
				</tr>
				<tr>
					<td> <textarea class="form-control" placeholder="�۳���" name="bbsContent"
					maxlength="2048"
					style="height:400px"></textarea>
					</td>
				</tr>
								
			</tbody>
			
			</table>
			
			<input type="submit" class="btn btn-primary pull-right" value="�۾���">
			
			
			</form>
			
			
		</div>
	
	</div>
	
	

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>