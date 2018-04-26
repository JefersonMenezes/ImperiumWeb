<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<span class="notranslate" onmouseover="_tipon(this)"
	onmouseout="_tipoff()"> <span class="google-src-text"
	style="direction: ltr; text-align: left"> <!DOCTYPE html>
		<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/cadastro.css">
</head>
<body>
	<div class="container">
		<div class="box">
			<div class="cabecalho">
				<h1>Cadastro de Usuario</h1>
			</div>
			<div class="form">
				<form action="adicionaUsuario" class="formulario">
					<ul class="unorder-list">
						<li>Nome<br>
						<input type="text" name="nome" /></li>
						<li>E-mail<br>
						<input type="text" name="email" /></li>
						<li>Login<br>
						<input type="text" name="login" /></li>
						<li>Senha<br>
						<input type="text" name="senha" /></li>
						<li>Ativo<br>
						<input type="checkbox" name="ativo" /></li>

						<br>
						<input type="submit" value="Gravar" class="button" />
					</ul>
				</form>
			</div>
		</div>
	</div>
</body>
		</html>