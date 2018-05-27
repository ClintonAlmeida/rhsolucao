<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>RH SOLUCAO</title>
</head>
<body>
    <form action="/rhsolucao/funcionarios" method="POST">
        <div>
            <label>Nome</label>
            <input type="text" name="nome" />
        </div>
        <div>
            <label>Cargo</label>
            <input type="text" name="cargo"/>
        </div>
        <div>
            <label>Departamento</label>
            <input type="text" name="departamento" />
        </div>
        <button type="submit">Cadastrar</button>
    </form>
</body>
</html>