<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Lista de Productos</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5">
  <h2>Lista de Productos</h2>
  <table class="table">
    <thead>
      <tr>
        <th>ID</th>
        <th>Categoría</th>
        <th>Marca</th>
        <th>Descripción</th>
        <th>Precio</th>
        <th>PVP</th>
        <th>Impuesto</th>
        <th>Foto</th>
      </tr>
    </thead>
    <tbody>
      <?php
      // Establecer conexión con la base de datos
      $servername = "44.217.158.224";
      $username = "cevallos";
      $password = "cevallos123";
      $dbname = "tienda";

      $conn = new mysqli($servername, $username, $password, $dbname);

      // Comprobar la conexión
      if ($conn->connect_error) {
        die("Conexión fallida: " . $conn->connect_error);
      }

      // Consulta SQL para obtener los datos de la tabla producto
      $sql = "SELECT * FROM producto";
      $result = $conn->query($sql);

      if ($result->num_rows > 0) {
        // Mostrar los datos de cada fila
        while($row = $result->fetch_assoc()) {
          echo "<tr>";
          echo "<td>".$row['id']."</td>";
          echo "<td>".$row['idcategoria']."</td>";
          echo "<td>".$row['idmarca']."</td>";
          echo "<td>".$row['descripcion']."</td>";
          echo "<td>".$row['precio']."</td>";
          echo "<td>".$row['pvp']."</td>";
          echo "<td>".$row['impuesto']."</td>";
          echo "<td><img src='".$row['foto']."' alt='Foto' style='max-width:100px; max-height:100px;'></td>";
          echo "</tr>";
        }
      } else {
        echo "0 resultados";
      }
      $conn->close();
      ?>
    </tbody>
  </table>
</div>

</body>
</html>
