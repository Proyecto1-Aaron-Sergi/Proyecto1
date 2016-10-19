<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<?php
$fecha=$_REQUEST["fecha"];
$ubicacion=$_REQUEST["celdas"];
$color=$_REQUEST["color"];
$marca=$_REQUEST["marca"];
$modelo=$_REQUEST["modelo"];
$numserie=$_REQUEST["numserie"];
$conexion = mysqli_connect('localhost', 'root', '', 'bd_proyecto1');

		$acentos = mysqli_query($conexion, "SET NAMES 'utf8'");

		if (!$conexion) {
		    echo "Error: No se pudo conectar a MySQL." . PHP_EOL;
		    echo "error de depuración: " . mysqli_connect_errno() . PHP_EOL;
		    echo "error de depuración: " . mysqli_connect_error() . PHP_EOL;
		    exit;
		}

		extract($_REQUEST);

if($numserie!="" || $numserie= anu_numero_serie){
			$sql .= " WHERE anu_numero_serie=$numserie ";
		} elseif ($marca=anu_marca) {
			$sql .= " WHERE anu_marca=$marca";


	$sql = "SELECT * FROM anunci";


	
	
	$anuncis = mysqli_query($conexion, $sql);
		if(mysqli_num_rows($anuncis)>0){
			echo "Número de anuncios: " . mysqli_num_rows($anuncis) . "<br/><br/>";
			while($anunci = mysqli_fetch_array($anuncis)){
				echo "Titulo: " . $anunci['anu_titol'] . "<br/>";
				echo "Fecha anuncio: " . $anunci['anu_data_anunci'] . "<br/>";
				echo "Ubicación: " . $anunci['anu_ubicacio_robatori'] . "<br/>";
				echo "Descripción: " . $anunci['anu_descripcio_robatori'] . "<br/>";
				echo "Marca: " . $anunci['anu_marca'] . "<br/>";
				echo "Modelo: " . $anunci['anu_model'] . "<br/>";
				echo "Color: " . $anunci['anu_color'] . "<br/>";
				echo "Antigüedad: " . $anunci['anu_antiguitat'] . "<br/>";
				echo "Descripción: " . $anunci['anu_descripcio'] . "<br/>";
				echo "Número serie: " . $anunci['anu_numero_serie'] . "<br/>";
				echo "Compensación: " . $anunci['anu_compensacio'] . "<br/><br/><br/><br/>";
		
		}
	}


		mysqli_close($conexion);
?>
</body>
</html>
