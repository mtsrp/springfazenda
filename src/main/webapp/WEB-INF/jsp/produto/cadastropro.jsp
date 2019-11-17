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
			

			
			<form:form method="POST" commandName="pro" class="form-horizontal" action="cadastrarprod.html">
				<div class="form-group">
					<label class="control-label col-sm-2" for="NomeP">Nome do produto</label>
					<div class="col-sm-3">
						<form:input path="nome_prod" type="text" required="true" class="form-control" placeholder="Digite o nome do produto" maxlength="20"/>
					</div>
					
					<label class="control-label col-sm-2" for="Categoria"> Tipo de produto</label>
					<div class="col-sm-3">
						<select required="true" class="form-control" name="Categoria">
							<option>Selecione...</option>
							<option path="tipo_prod"  value="Fruta">Fruta</option>
							<option path="tipo_prod"  value="Vegetal">Vegetal</option>
							<option path="tipo_prod"  value="Grao">Grão</option>
							<option path="tipo_prod"  value="Legume">Legume</option>
							<option path="tipo_prod"  value="Carnes">Carnes</option>
							<option path="tipo_prod"  value="Laticinios">Laticínios e derivados</option>
							
						</select>
					</div>
					
				</div>
			

			
				<%-- <div class="form-group">
					<label class="control-label col-sm-2" for="Validade">Validade</label>
					<div class="col-sm-3">
						<form:input path="validade_prod" type="date" required="true" class="form-control" id="Validade" name="Validade"/>
					</div>
				</div> --%>
		

			
				<div class="form-group">
					<label class="control-label col-sm-2" for="Imagem"> Defina uma imagem para o produto</label>
					<div class="col-sm-5">
						<form:input path="img_prod" type="text" name="Imagem" required="true" id="img_prod" class="form-control"/>
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<form:button type="submit" class="button button-default">Salvar</form:button>
					</div>
				</div>
			</form:form>

		</div>

	</body>

</html>