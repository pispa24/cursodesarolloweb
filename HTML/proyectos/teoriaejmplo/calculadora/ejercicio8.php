<!DOCTYPE html>
<html lang="es" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Ejercicio 8</title>
  </head>
  <body>
		<?php
		if ($_POST ["valor1"] !="" and $_POST ["valor2"]!=""){
			if ($_POST["operador"] == "suma") {
				print ($resultado = $_POST ["valor1"] + $_POST ["valor2"]);
				print ('<br /><a href="calculadora.php">Volver</a>');
			} elseif ($_POST["operador"] == "resta") {
				print ($resultado = $_POST ["valor1"] - $_POST ["valor2"]);
				print ('<br /><a href="calculadora.php">Volver</a>');
			} elseif ($_POST["operador"] == "multiplicacion") {
				print ($resultado = $_POST ["valor1"] * $_POST ["valor2"]);
				print ('<br /><a href="calculadora.php">Volver</a>');
			} elseif ($_POST["operador"] == "division") {
				print ($resultado = $_POST ["valor1"] / $_POST ["valor2"]);
				print ('<br /><a href="calculadora.php">Volver</a>');
			}
		} else {
			print("Ingresa alg&uacute;n valor");
			print ('<br /><a href="calculadora.php">Volver</a>');
		}
	?>

</body>
</html>
