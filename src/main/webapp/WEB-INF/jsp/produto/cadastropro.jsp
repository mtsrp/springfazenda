<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!-- Ativa as tags do SPRING -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Cadastro de Produtos - Fazenda Orgânica</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

	</head>

	<body>
	

		<div class="container">  
			<h2>Cadastro de Produtos</h2>
			

			
			<form:form method="POST" commandName="pro" class="form-horizontal" action="/cadastrarpro.html">
				<div class="form-group">
					<label class="control-label col-sm-2" for="NomeP">Nome do produto</label>
					<div class="col-sm-3">
						<form:input path="nome_prod" type="text" required="true" class="form-control" placeholder="Digite o nome do produto" maxlength="20"/>
					</div>
					<label class="control-label col-sm-2" for="Categoria"> Tipo de produto</label>
					<div class="col-sm-3">
						<select path="tipo_prod" required="true" class="form-control" name="Categoria">
							<option>Selecione...</option>
							<option value="Fruta">Fruta</option>
							<option value="Vegetal">Vegetal</option>
							<option value="Grao">Grão</option>
							<option value="Legume">Legume</option>
							<option value="Carnes">Carnes</option>
							<option value="Laticinios">Laticínios e derivados</option>
							
						</select>
					</div>
					
				</div>
			

			
				<div class="form-group">
					<label class="control-label col-sm-2" for="Validade">Validade</label>
					<div class="col-sm-3">
						<input type="date" required="true" class="form-control" id="Validade" name="Validade">
					</div>
				</div>
		

			
				<div class="form-group">
					<label class="control-label col-sm-2" for="Imagem"> Defina uma imagem para o produto</label>
					<div class="col-sm-5">
						<input type="file" name="Imagem" required="true" id="Imagem" class="form-control">
						<input type="hidden" name="MAX_SIZE_FILE" value="4194304">
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="Salvar" class="button button-default">Salvar</button>
					</div>
				</div>
			</form:form>

		</div>

	</body>

</html>