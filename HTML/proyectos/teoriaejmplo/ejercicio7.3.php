<!DOCTYPE html>
<html lang="es" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Ejercicio 7</title>
  </head>
  <body>
    <?php
      echo '<table border=1>';
      //Cabecera fila 1
      echo '<tr>';
      echo '<td>X</td>';


      for($i=1;$i<=10;$i++){
        echo '<td>';
        echo $i;
        echo '</td>';
      }
      echo '</tr>';

      //contenido de la tabla
      //columna vertical
      for($i=1;$i<=10;$i++){
        echo '<tr>';
        echo '<td>';
        echo $i;
        echo '</td>';
        //calculo de las multiplicaciones
        for($j=1; $j<=10;$j++){
          echo '<td>';
          echo $i*$j;
          echo '</td>';
        }
      }
      echo '</tr>';
      echo '</table>';
    ?>
  </body>
</html>
