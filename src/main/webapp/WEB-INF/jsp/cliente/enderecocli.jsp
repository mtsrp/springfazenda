<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <!-- Ativa as tags do SPRING -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
	<head>
		<title>Cadastro Endereço - Fazenda Orgânica</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
	  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

	</head>

	<body>
		<div class="container">  
			<h2>Cadastrando o endereço</h2>
   
			<form class="form-horizontal" action="/action_page.php">
				<div class="form-group">
					<label class="control-label col-sm-2" for="Cep">CEP</label>
					<div class="col-sm-3">
						<form:input path="cep_cli" type="text" required="true" class="form-control" id="Cep" name="Cep" placeholder="Digite seu CEP" minlength="8" size="8" maxlength="8"/>
					</div>
				</div>
			</form>

			<form class="form-horizontal" action="/action_page.php">
				<div class="form-group">
					<label class="control-label col-sm-2" for="Rua">Rua</label>
					<div class="col-sm-2">
						<form:input path="rua_cli" type="text" required="true" class="form-control" id="Rua" name="Rua" placeholder="Digite o nome da rua" maxlength="70"/>
					</div>

					<div class="col-sm-1">
						<form:input path="num_end_cli" type="text" required="true" class="form-control" id="Numero" name="Numero" placeholder="Nº" minlength="6" size="6" maxlength="6"/>
					</div>
				</div>
			</form>

			<form class="form-horizontal" action="/action_page.php">
				<div class="form-group">
					<label class="control-label col-sm-2" for="Complemento">Complemento</label>
					<div class="col-sm-3">
						<form:input path="comp_cli" type="text" required="true" class="form-control" id="Complemento" name="Complemento" placeholder="Digite um complemento" maxlength="25"/>
					</div>
				</div>
			</form>

			<form class="form-horizontal" action="/action_page.php">
				<div class="form-group">
					<label class="control-label col-sm-2" for="Cidade">Cidade</label>
					<div class="col-sm-3">
						<form:input path="cid_cli" type="text" required="true" class="form-control" id="Cidade" name="Cidade" placeholder="Digite sua cidade" maxlength="70"/>
					</div>
				</div>
			</form>
 
            <form class="form-horizontal" action="/action_page.php">
				<div class="form-group">
					<label class="control-label col-sm-2" for="Estado">Estado</label>
					<div class="col-sm-3">
                       <select id="Estado" required="true" class="form-control" name="Estado">
							
						 <option>Selecione...</option>
						 <option value="AC">AC</option>
						 <option value="AL">AL</option>
						 <option value="AP">AP</option>
						 <option value="AM">AM</option>
						 <option value="BA">BA</option>
						 <option value="CE">CE</option>
						 <option value="ES">ES</option>
						 <option value="DF">DF</option>
						 <option value="MA">MA</option>
						 <option value="MT">MT</option>
						 <option value="MS">MS</option>
						 <option value="MG">MG</option>
						 <option value="PA">PA</option>
						 <option value="PB">PB</option>
						 <option value="PR">PR</option>
						 <option value="PE">PE</option>
						 <option value="PI">PI</option>
						 <option value="RJ">RJ</option>
						 <option value="RN">RN</option>
						 <option value="RS">RS</option>
						 <option value="RO">RO</option>
						 <option value="RR">RR</option>
						 <option value="SC">SC</option>
						 <option value="SP">SP</option>
						 <option value="SE">SE</option>
						 <option value="TO">TO</option>
						 </select>

					</div>
					
				</div>
			</form>

			<form class="form-horizontal" action="/action_page.php">
				<div class="form-group">
					<label class="control-label col-sm-2" for="Bairro">Bairro</label>
					<div class="col-sm-3">
						<form:input path="bairro_cli" type="text" required="true" class="form-control" id="Bairro" name="Bairro" placeholder="Digite seu bairro" maxlength="40"/>
					</div>
				</div>
			</form>

						 
           <form class="form-horizontal" action="/action_page.php">
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="Submit" class="button button-default">Confirmar</button>
					</div>

				</div>
			</form>

		</div>

	</body>

</html>

