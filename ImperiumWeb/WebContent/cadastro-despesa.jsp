<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Insert title here</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="css/despesa.css">

</head>
<body>
		<div class="container">
			<div class="box">
				<div class="cabecalho"> 
						<h1>Cadastro de Despesa</h1>
				</div>
				<div class="form">
					<!--jsp:useBean id="daoCon" class="br.com.flame.dao.ContaDao"/ -->
					<jsp:useBean id="dao" class="br.com.flame.dao.CategoriaDao"/>

					<form action="adicionadespesa" class="formulario">
						<ul class="unorder-list">
							<li>Valor<br/>
								<input type="text" name="valor"/></li>
							<li>Descrição<br/>
								<input type="text" name="valor"/></li>
							<li>Data<br/>
								<input type="text" name="valor"/></li>
							<li>Conta<br/>
								<!--
								<select>
									<c:forEach var="conta" items="${daoCon.getList(1)}">
										<option value="${conta.id}">${conta.nome}</option>
									</c:forEach>
								</select>
								-->
							</li>
							<li>Categoria<br/>
								<select>
									<c:forEach var="categoria" items="${dao.listaDespesas}">
										<option value="${categoria.id}">${categoria.nome}</option>
									</c:forEach>
								</select>
							<li>pago<br/>
								<input type="checkbox" name="pago" /></li>

							<br/>
							<input type="submit" value="Gravar" class="button">
						</ul>
					</form>
				</div>
			</div>
		</div>

</body>
</html>