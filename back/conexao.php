
<?php
    $servidor = "localhost";
    $usuario = "root";
    $senha = "12345678";
    $banco = "consultas_sql";
    $comando = new PDO("mysql:host=$servidor; dbname=$banco", $usuario, $senha);
?>