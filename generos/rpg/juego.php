<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Detalle del Videojuego</title>
    <link rel="stylesheet" href="juego-rpg.css">
</head>
<body>
    <div class="container">
        
        <?php
            // Conexión a la base de datos
            $servername = "localhost";
            $username = "root";
            $password = "";
            $dbname = "videojuegos";

            $conn = new mysqli($servername, $username, $password, $dbname);

            if ($conn->connect_error) {
                die("Conexión fallida: " . $conn->connect_error);
            }

            if (isset($_GET['id']) && is_numeric($_GET['id'])) {
                $id = $_GET['id'];
                $sql = "SELECT * FROM rpg WHERE id=$id";
                $result = $conn->query($sql);
        
                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        echo "<div class='image-section'>";
                        if (file_exists($row["imagen"])) {
                            echo "<img src='" . htmlspecialchars($row["imagen"]) . "' alt='" . htmlspecialchars($row["titulo"]) . "'>";
                        } else {
                            echo "<img src='placeholder.jpg' alt='Imagen no disponible'>";
                        }
                        echo "</div>";

                        // Botón de retroceso debajo de la imagen
                        echo "<div class='back-button'>
                                <a href='javascript:history.back()'>
                                    <img src='../../imagenes/barra-de-navegacion/regresar-juegos.png' alt='Regresar'>
                                </a>
                              </div>";

                        echo "<div class='details'>
                                <h1 class='title'>" . htmlspecialchars($row["titulo"]) . "</h1>
                                <p class='description'>" . htmlspecialchars($row["descripcion"]) . "</p>
                                <p class='price'>Precio: $" . htmlspecialchars($row["precio"]) . " €</p>
                                <button class='buy-button'>Comprar ahora</button>
                              </div>";
                    }
                } else {
                    echo "<p>No se encontró el videojuego</p>";
                }
            } else {
                echo "<p>ID de videojuego no válido.</p>";
            }

            $conn->close();
        ?>
    </div>
</body>
</html>
