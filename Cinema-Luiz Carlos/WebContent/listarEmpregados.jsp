<%@page import="dao.ListarPessoasDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.ArrayList" %>
     <%@ page import="model.Pessoa" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listar todas pessoas Registradas</title>
</head>
<body>
<form action="/Cinema-Luiz_Carlos/index"><input type="submit" value="inicio"></form>
<h1>Listar Todas Pessoas Registrados</h1>
<table border=1>
<tr><td>Todas as Pessoas</td><td>Ocupa��o</td></tr>
<% ArrayList<Pessoa> listarPessoas = (ArrayList<Pessoa>) request.getAttribute("listarPessoas"); %>

<% 	for (int i = 0; i < listarPessoas.size(); i++){ 
		out.println("<tr><td>" + "<a href='/Cinema-Luiz_Carlos/detalhaPessoa?idpessoa=" + listarPessoas.get(i).getIdpessoa() +"'>" +listarPessoas.get(i).getNomepessoa() +"</a></td>"+ "<td>"+ listarPessoas.get(i).getTipoPessoa() + "</td></tr>");}
 %>
</table>
</body>
</html>