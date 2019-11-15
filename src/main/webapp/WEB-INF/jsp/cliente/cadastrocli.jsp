<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!-- Ativa as tags do SPRING -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>

<head>
<title>Crie sua conta - FarmValley</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>

<style>
/* Style the form */
#cadCLI {
	background-color: #ffffff;
	margin: 100px auto;
	padding: 40px;
	width: 70%;
	min-width: 300px;
}

/* Style the input fields */
input {
	padding: 10px;
	width: 100%;
	font-size: 17px;
	font-family: Raleway;
	border: 1px solid #aaaaaa;
}

/* Mark input boxes that gets an error on validation: */
input.invalid {
	background-color: #ffdddd;
}

/* Hide all steps by default: */
.tab {
	display: none;
}

/* Make circles that indicate the steps of the form: */
.step {
	height: 15px;
	width: 15px;
	margin: 0 2px;
	background-color: #bbbbbb;
	border: none;
	border-radius: 50%;
	display: inline-block;
	opacity: 0.5;
}

/* Mark the active step: */
.step.active {
	opacity: 1;
}

/* Mark the steps that are finished and valid: */
.step.finish {
	background-color: #4CAF50;
}
</style>
<body>

	<form:form method="POST" commandName="cli" action="cadastrarcli.html"
		class="form-horizontal">

		<h1>Crie sua conta</h1>

		<!-- One "tab" for each step in the form: -->
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
				<input type="Tel" required="true" class="form-control" id="telefone"
					name="telefone" placeholder="Digite seu telefone" minlength="9"
					size="9" maxlength="9">
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


		<div style="overflow: auto;">
			<div style="float: right;">
				<button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
				<button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
				<form:button type="submit">Confirmar</form:button>
				
			</div>
		</div>

		<!-- Circles which indicates the steps of the form: -->
		<div style="text-align: center; margin-top: 40px;">
			<span class="step"></span> <span class="step"></span> <span
				class="step"></span> <span class="step"></span>
		</div>

	</form:form>

	<script type="text/javascript">
		var currentTab = 0; // Current tab is set to be the first tab (0)
		showTab(currentTab); // Display the current tab

		function showTab(n) {
			// This function will display the specified tab of the form ...
			var x = document.getElementsByClassName("tab");
			x[n].style.display = "block";
			// ... and fix the Previous/Next buttons:
			if (n == 0) {
				document.getElementById("prevBtn").style.display = "none";
			} else {
				document.getElementById("prevBtn").style.display = "inline";
			}
			if (n == (x.length - 1)) {
				document.getElementById("nextBtn").innerHTML = "Submit";
			} else {
				document.getElementById("nextBtn").innerHTML = "Next";
			}
			// ... and run a function that displays the correct step indicator:
			fixStepIndicator(n)
		}

		function nextPrev(n) {
			// This function will figure out which tab to display
			var x = document.getElementsByClassName("tab");
			// Exit the function if any field in the current tab is invalid:
			if (n == 1 && !validateForm())
				return false;
			// Hide the current tab:
			x[currentTab].style.display = "none";
			// Increase or decrease the current tab by 1:
			currentTab = currentTab + n;
			// if you have reached the end of the form... :
			if (currentTab >= x.length) {
				//...the form gets submitted:
				document.getElementById("cadCLI").submit();
				return false;
			}
			// Otherwise, display the correct tab:
			showTab(currentTab);
		}

		function validateForm() {
			// This function deals with validation of the form fields
			var x, y, i, valid = true;
			x = document.getElementsByClassName("tab");
			y = x[currentTab].getElementsByTagName("input");
			// A loop that checks every input field in the current tab:
			for (i = 0; i < y.length; i++) {
				// If a field is empty...
				if (y[i].value == "") {
					// add an "invalid" class to the field:
					y[i].className += " invalid";
					// and set the current valid status to false:
					valid = false;
				}
			}
			// If the valid status is true, mark the step as finished and valid:
			if (valid) {
				document.getElementsByClassName("step")[currentTab].className += " finish";
			}
			return valid; // return the valid status
		}

		function fixStepIndicator(n) {
			// This function removes the "active" class of all steps...
			var i, x = document.getElementsByClassName("step");
			for (i = 0; i < x.length; i++) {
				x[i].className = x[i].className.replace(" active", "");
			}
			//... and adds the "active" class to the current step:
			x[n].className += " active";
		}
	</script>
</body>
</html>