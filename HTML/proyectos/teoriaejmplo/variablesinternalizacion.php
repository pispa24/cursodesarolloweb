<!DOCTYPE html>
<html lang="es" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Mi primer programa en PHP</title>
  </head>
  <body>
    <h1>Probando PHP ejemplo 1</h1>
    <form action="variablesInternacionalizacion.php" method="get">
      <select name="lang">
        <option value="en">Inglés</option>
        <option value="es">Español</option>
      </select>
      <input type="submit" value="Cambiar Idioma">
    </form>
    <?PHP
        error_reporting(0);
        $idioma = $_GET["lang"];
        if(empty($idioma)){
          $idioma="es";
        }
       $mensaje_es="Hola";
       $mensaje_en="Hello";
       //$idioma = "es";
       $mensaje = "mensaje_" . $idioma;
       print $$mensaje;
    ?>

  </body>
</html>
