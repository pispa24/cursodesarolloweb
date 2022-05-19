<!DOCTYPE html>
<html lang="es" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Probando formularios</title>
  </head>
  <body>
    <h1>Prueba con formularios ENVIANDO</h1>
    <form action="form1Receive.php" method="POST">
      Edad: <input type="number" name="edad">
      <br>
      Color Favorito: <input type="color" name="color">
      <br>
      Fecha nacimiento: <input type="date" name="fechan">
      <br>
      Email: <input type="email" name="correo">
      <br>
      <input type="submit" value="Enviar">
   </form>
  </body>
</html>


<!DOCTYPE html>
<html lang="es" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Probando formularios recibir</title>
  </head>
  <body>
    <h1>Prueba con formularios RECIBIENDO</h1>
    <?php
      $edad = $_POST["edad"];
      echo "La edad es:". $edad."<br>";
      $color = $_POST["color"];
      echo "El color es:". $color."<br>";
      $fechaN = $_POST["fechan"];
      echo "La fecha es:". $fechaN."<br>";
      $email = $_POST["correo"];
      echo "El email es:". $email."<br>";
    ?>
  </body>
</html>
