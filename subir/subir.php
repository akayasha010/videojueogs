<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Subida de Videojuego</title>
    <link rel="stylesheet" href="estilos.css">
</head>
<body>
    <div class="container">
        <?php
            $servername = "localhost";
            $username = "root";
            $password = "";
            $dbname = "videojuegos";

            $conn = new mysqli($servername, $username, $password, $dbname);

            if ($conn->connect_error) {
                die("<p style='color: #ffdddd;'>Conexión fallida: " . $conn->connect_error . "</p>");
            }

            if ($_SERVER["REQUEST_METHOD"] == "POST") {
                $titulo = $_POST['titulo'];
                $descripcion = $_POST['descripcion'];
                $precio = $_POST['precio'];
                $imagen = $_FILES['imagen'];
                $target_dir = "uploads/";

                if (!is_dir($target_dir)) {
                    mkdir($target_dir, 0777, true);
                }

                $target_file = $target_dir . basename($imagen["name"]);
                if (move_uploaded_file($imagen["tmp_name"], $target_file)) {
                    $sql = "INSERT INTO pendientes (titulo, descripcion, precio, imagen) VALUES ('$titulo', '$descripcion', $precio, '$target_file')";

                    if ($conn->query($sql) === TRUE) {
                        echo "<p style='color: #c8b6e8;'>videojuego subido correctamente, espere a que nuestros moderadores lo chequen para subirlo a la plataforma</p>";
                    } else {
                        echo "<p style='color: #ffdddd;'>Error: " . $sql . "<br>" . $conn->error . "</p>";
                    }
                } else {
                    echo "<p style='color: #ffdddd;'>Error al subir la imagen.</p>";
                }
            }

            $conn->close();
        ?>
    </div>
</body>
</html>
