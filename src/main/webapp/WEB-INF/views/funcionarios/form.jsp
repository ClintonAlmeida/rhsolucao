<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:url value="/resources/css" var="cssPath" />
<link rel="stylesheet" href="${cssPath}/bootstrap.min.css">

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

<title>RH SOLUCAO</title>
</head>
<body>
	<div class="container">
		<form:form action="${s:mvcUrl('FC#gravar').build()}" method="POST"
			commandName="funcionario" enctype="multipart/*">

			<div class="form-group">
				<label>Nome</label>
				<form:input path="nome" cssClass="form-control" />
				<br>
				<form:errors path="nome" cssClass="alert alert-danger"  />
			</div>
			<div class="form-group">
				<label>Cargo</label>
				<form:input path="cargo" cssClass="form-control" />
				<br>
				<form:errors path="cargo" cssClass="alert alert-danger"/>
			</div>
			<div class="form-group">
				<label>Departamento</label>
				<form:input path="departamento" cssClass="form-control" />
				<br>
				<form:errors path="departamento" cssClass="alert alert-danger"/>
			</div>
			<div class="form-group">
				<label>Data de Contratacao</label>
				<form:input path="dataContratacao" cssClass="form-control" />
				<br>
				<form:errors path="dataContratacao" cssClass="alert alert-danger"  />

			</div>

			<button type="submit" class="btn btn-default" title="Salvar">
				<span class="glyphicon glyphicon-floppy-disk" title="Salvar" true"></span>
			</button>
		</form:form>
	</div>
</body>
</html>