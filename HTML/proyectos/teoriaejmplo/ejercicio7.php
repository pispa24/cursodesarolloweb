<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>ejercicio 7</title>
  </head>
  <body>
    <?php //Programa de tablas de multiplicar
for ($tabla=1; $tabla <=10 ; $tabla++){
//En la siguiente línea sacamos la tabla que estamos realizando
	echo 'Tabla del '.$tabla.'<br />';
for ($x=1; $x <=10 ; $x++){
//En la siguiente línea sacamos la operaciones del 1 al 10 de cada tabla
	echo '[ '.$tabla.' * '.$x.' = '.$tabla*$x.' ] ';
}
echo '<hr />';
}
?>

  </body>
</html>
