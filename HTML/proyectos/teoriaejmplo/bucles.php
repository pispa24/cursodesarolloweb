<!DOCTYPE html>
<html lang="es" dir="ltr">
<head>
  <meta charset="utf-8">
  <title>Probando bucles</title>
</head>
<body>
  <h1>Prueba bucle WHILE</h1>
  <?php
  $num = 1;
  while ($num <= 5)
  {
    echo $num.'<br />';
    $num++;
  }
  ?>
  <h1>Probando bucle WHILE 2º</h1>
  <?php
  print ("<UL>\n");
  $i=1;
  while ($i <= 10)
  {
    print ("<LI>Elemento $i</LI>\n");
    $i++; //equivale a $i=$i+1;
  }
  print ("</UL>\n");
  ?>
  <h1>Probando bucle WHILE 3º</h1>
  <?php
  print ("<UL>\n");
  $i=10;
  while ($i >= 1)
  {
    print ("<LI>Elemento $i</LI>\n");
    $i--; //equivale a $i=$i+1;
  }
  print ("</UL>\n");
  ?>
  <h1>Probando bucle WHILE 4º</h1>
  <?php
  print ("<ol type='a' start='2'>\n");//empieza desde la letra 2 type admite numeros, letras(a-A ) y numero romanos type="I" o "i"
  $i=1;
  while ($i <= 10)
  {
    print ("<LI>Elemento $i</LI>\n");
    $i++; //equivale a $i=$i+1;
  }
  print ("</ol>\n");
  ?>
  <h1>Probando bucle FOR 1º</h1>
  <?PHP
    print ("<UL>\n");
    for ($i=1; $i<=5; $i++){
      print ("<LI>Elemento $i</LI>\n");
    }
    print ("</UL>\n");

  ?>
    <h1>Probando bucle FOR 2º</h1>
    <?PHP
  $numDo = 100;
do
{
echo $numDo."<br />";
}
while ($numDo < 1 );

</body>
</html>
