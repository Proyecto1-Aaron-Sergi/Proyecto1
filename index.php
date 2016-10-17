<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<?php
$conexion = mysqli_connect('localhost', 'root', '', 'bd_proyecto1');

		$acentos = mysqli_query($conexion, "SET NAMES 'utf8'");

		if (!$conexion) {
		    echo "Error: No se pudo conectar a MySQL." . PHP_EOL;
		    echo "error de depuración: " . mysqli_connect_errno() . PHP_EOL;
		    echo "error de depuración: " . mysqli_connect_error() . PHP_EOL;
		    exit;
		}

		extract($_REQUEST);

	$sql = "SELECT * FROM anunci";


?>
</body>
</html>