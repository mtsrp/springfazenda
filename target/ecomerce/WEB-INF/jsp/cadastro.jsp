<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html><head>
		<title>Crie sua conta - Fazenda Orgânica</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

	</head>

	<body>
		<div class="container">  
			<h2>Crie sua conta</h2>
			<form class="form-horizontal" action="/action_page.php">
				<div class="form-group">
					<label class="control-label col-sm-2" for="NomeC">Nome</label>
					<div class="col-sm-3">
						<input type="NomeC" required="true" class="form-control" id="NomeC" name="NomeC" placeholder="Digite seu nome" maxlength="20">
					</div>
				</div>
			</form>

            <form class="form-horizontal" action="/action_page.php">
				<div class="form-group">
					<label class="control-label col-sm-2" for="SobC">Sobrenome</label>
					<div class="col-sm-3">
						<input type="SobC" required="true" class="form-control" id="SobC" name="SobC" placeholder="Digite seu sobrenome" maxlength="20">
					</div>
           		</div>
           </form>

           <form class="form-horizontal" action="/action_page.php">
				<div class="form-group">
					<label class="control-label col-sm-2" for="Email">Email</label>
					<div class="col-sm-3">
						<input type="Email" required="true" class="form-control" id="Email" name="Email" placeholder="Digite seu email" maxlength="20">
					</div>
				</div>
			</form>

			<form class="form-horizontal" action="/action_page.php">
				<div class="form-group">
					<label class="control-label col-sm-2" for="Telefone">Digite seu celular</label>
					<div class="col-sm-3">
					    <input type="Tel" required="true" class="form-control" id="Telefone" name="Telefone" placeholder="Digite seu celular" minlength="9" size="9" maxlength="9">
			        </div>
			    </div>
			</form>

			<form class="form-horizontal" action="/action_page.php">
				<div class="form-group">
					<label class="control-label col-sm-2" for="Telefone">Digite seu telefone</label>
					<div class="col-sm-3">
					    <input type="Tel" required="true" class="form-control" id="Telefone" name="Telefone" placeholder="Digite seu telefone" minlength="9" size="9" maxlength="9">
			        </div>
			    </div>
			</form>
            
            <form class="form-horizontal" action="/action_page.php">
				<div class="form-group">
					<label class="control-label col-sm-2" for="Senha">Senha</label>
					<div class="col-sm-3">
					    <input type="password" required="true" class="form-control" id="Senha" name="Senha" placeholder="Digite sua senha" minlength="8" size="10" maxlength="15">
			        </div>
			    </div>
			</form>

			<form class="form-horizontal" action="/action_page.php">
				<div class="form-group">
					<label class="control-label col-sm-2" for="Senha">Confirme sua senha</label>
					<div class="col-sm-3">
					    <input type="password" required="true" class="form-control" id="Senha" name="Senha" placeholder="Digite sua senha" minlength="8" size="10" maxlength="15">
			        </div>
			    </div>
			</form>

			

           	<form class="form-horizontal" action="/action_page.php">
				<div class="form-group">   
                     <label class="control-label col-sm-2" for="Genero"> Gênero</label>
				     <div class="col-sm-3">
						<input type="radio" name="sex" value="male"> Masculino						
						<input type="radio" name="sex" value="female"> Feminino
				
					</div>
				</div>
			</form>

			<form class="form-horizontal" action="/action_page.php">
				<div class="form-group">
					<label class="control-label col-sm-2" for="Data">Data de Nascimento</label>
					<div class="col-sm-3">
						<input type="date" required="true" class="form-control" id="Data" name="Data">
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

	

</body></html>