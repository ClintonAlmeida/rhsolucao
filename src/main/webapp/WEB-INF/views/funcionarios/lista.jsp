<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<c:url value="/resources/css" var="cssPath" />
<link rel="stylesheet" href="${cssPath}/bootstrap.min.css" />
<link rel="stylesheet" href="${cssPath}/bootstrap-theme.min.css" />


<title>RH SOLUCAO</title>

<nav class="navbar navbar-inverse">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">RH Solução</a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="${s:mvcUrl('FC#lista').build()}"> Lista de
						Funcionarios</a></li>
				<li><a href="${s:mvcUrl('FC#form').build()}"> Cadastro de
						Funcionarios</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
</nav>

<style type="text/css">
body {
	padding: 0px 0px;
}
</style>
</head>
<body>
	<div class="container table-responsive">
		<h1>Lista de Funcionarios</h1>
		<div>${sucesso }</div>
		<table class="table table-hover">
			<tr>
				<th>Nome</th>
				<th>Cargo</th>
				<th>Departamento</th>
				<th>Data de Contratação</th>
			</tr>

			<c:forEach items="${funcionarios }" var="funcionario">
				<tr>
					<td>${funcionario.nome}</td>
					<td>${funcionario.cargo}</td>
					<td>${funcionario.departamento}</td>
					<td><fmt:formatDate pattern="dd/MM/yyyy"
							value="${funcionario.dataContratacao.time}" /></td>
					<td>
					<form action='/remover'" method="POST">
            <input type="hidden" name="_method" value="DELETE"/>
<input type="submit" value="remover"/>
</form></td>
				</tr>
			</c:forEach>

		</table>
	</div>
</body>
</html>