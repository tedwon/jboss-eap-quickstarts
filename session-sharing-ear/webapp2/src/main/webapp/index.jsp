<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
session.setAttribute(java.util.UUID.randomUUID().toString(), new java.util.Date().toString());

 
java.util.Enumeration enames = session.getAttributeNames();
while (enames.hasMoreElements()) {
   String key = (String) enames.nextElement();
   String value = "" + session.getAttribute(key);
   out.println(key + " - " + value); 
}

%>
</body>
</html>