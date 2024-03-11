<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tabla de Productos</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h1 class="mt-4">Hola Mundo - Tabla de Productos</h1>
        <table class="table mt-4">
            <thead class="thead-dark">
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Precio</th>
                    <th>Stock</th>
                </tr>
            </thead>
            <tbody>
                <?php
                // Definir productos estáticos
                $productos = array(
                    array("id" => 1, "nombre" => "Producto 1", "precio" => 10.99, "stock" => 50),
                    array("id" => 2, "nombre" => "Producto 2", "precio" => 19.99, "stock" => 30),
                    array("id" => 3, "nombre" => "Producto 3", "precio" => 5.99, "stock" => 100),
                    array("id" => 4, "nombre" => "Producto 4", "precio" => 15.99, "stock" => 20),
                    array("id" => 5, "nombre" => "Producto 5", "precio" => 25.99, "stock" => 10),
                    array("id" => 6, "nombre" => "Producto 6", "precio" => 8.99, "stock" => 70),
                    array("id" => 7, "nombre" => "Producto 7", "precio" => 12.99, "stock" => 40),
                    array("id" => 8, "nombre" => "Producto 8", "precio" => 18.99, "stock" => 15),
                    array("id" => 9, "nombre" => "Producto 9", "precio" => 22.99, "stock" => 5),
                    array("id" => 10, "nombre" => "Producto 10", "precio" => 30.99, "stock" => 25)
                );

                // Generar filas de la tabla con datos de productos
                foreach ($productos as $producto) {
                    echo "<tr>";
                    echo "<td>{$producto['id']}</td>";
                    echo "<td>{$producto['nombre']}</td>";
                    echo "<td>{$producto['precio']}</td>";
                    echo "<td>{$producto['stock']}</td>";
                    echo "</tr>";
                }
                ?>
            </tbody>
        </table>
    </div>

    <!-- Bootstrap JS (opcional, solo si necesitas funcionalidades de Bootstrap) -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
