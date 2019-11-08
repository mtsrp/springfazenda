<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!-- Ativa as tags do SPRING -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>Crie sua conta - Fazenda Orgânica</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>

<body>
	<div class="container">
		<h2>Crie sua conta</h2>
		<form:form methhod="POST" commandName="cli" action="adicionacli.html"
			class="form-horizontal">

			<div class="form-group">
				<label class="control-label col-sm-2" for="nome">Nome</label>
				<div class="col-sm-3">
					<form:input path="nome" type="text" class="form-control"
						placeholder="Digite seu nome" />
				</div>
			</div>


			<div class="form-group">
				<label class="control-label col-sm-2" for="sobrenome">Sobrenome</label>
				<div class="col-sm-3">
					<form:input path="sobrenome" type="text" class="form-control"
						placeholder="Digite seu sobrenome" />
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="Email">Email</label>
				<div class="col-sm-3">
					<form:input path="email" type="Email" class="form-control"
						placeholder="Digite seu email" />
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="celular">Digite
					seu celular</label>
				<div class="col-sm-3">
					<form:input path="celular" type="text" class="form-control"
						placeholder="Digite seu celular" />
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="telefone">Digite
					seu telefone</label>
				<div class="col-sm-3">
					<input type="Tel" required="true" class="form-control"
						id="telefone" name="telefone" placeholder="Digite seu telefone"
						minlength="9" size="9" maxlength="9">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="Senha">Senha</label>
				<div class="col-sm-3">
					<input type="password" required="true" class="form-control"
						id="Senha" name="Senha" placeholder="Digite sua senha"
						minlength="8" size="10" maxlength="15">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="SenhaConfirma">Confirme
					sua senha</label>
				<div class="col-sm-3">
					<input type="password" required="true" class="form-control"
						id="SenhaConfirma" name="Senha" placeholder="Digite sua senha"
						minlength="8" size="10" maxlength="15">
				</div>
			</div>



			<div class="form-group">
				<label class="control-label col-sm-2" for="genero"> Gênero</label>
				<div class="col-sm-3">
					<input type="radio" name="genero" value="male"> Masculino <input
						type="radio" name="genero" value="female"> Feminino

				</div>
			</div>


			<!-- <div class="form-group">
				<label class="control-label col-sm-2" for="Data">Data de
					Nascimento</label>
				<div class="col-sm-3">
					<input type="date" required="true" class="form-control" id="dtaNasc"
						name="dtaNasc">
				</div>
			</div> -->

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<form:button type="submit">Confirmar</form:button>
				</div>

			</div>
		</form:form>

	</div>



</body>
</html>