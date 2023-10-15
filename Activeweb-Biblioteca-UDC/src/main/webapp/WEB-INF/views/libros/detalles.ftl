<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>

    <link rel="stylesheet" href="${context_path}/css/detalles.css" />
  </head>

  <body>
    <div class="container detalles mt-5">
      <div class="row">
        <div class="col-8">
          <h2 class="text-center mt-4 mb-5">Datos Libro</h2>
          <img
            src="${libro.urlImg}"
            class="rounded mx-auto d-block libro-imagen"
            alt="imagen libro ${libro.titulo}"
          />
          <div class="d-flex justify-content-center mt-5">
            <div class="d-flex flex-column">
              <p class="fs-4">ISBM: ${libro.isbm}</p>
              <p class="fs-4">TITULO: ${libro.titulo}</p>
              <p class="fs-4">ANIO EDICION: ${libro.anioEdicion}</p>
              <p class="fs-4">EDITORIAL: ${libro.editorial}</p>
            </div>
          </div>
        </div>

        <div class="col-4">
          <h2 class="text-center mt-4 mb-5">Datos Autor</h2>
          <img
            src="${libro.autor.urlImg}"
            class="rounded mx-auto d-block libro-imagen"
            alt="..."
          />
          <div class="d-flex justify-content-center mt-5">
            <div class="d-flex flex-column">
              <p class="fs-4">ID: ${libro.autor.id}</p>
              <p class="fs-4">NOMBRE: ${libro.autor.nombre}</p>
              <p class="fs-4">APELLIDO: ${libro.autor.apellido}</p>
            </div>
          </div>
        </div>
      </div>
      <div class="row mt-5 mb-5">
        <!--MANDARLO A LIBROS-->
        <a class="btn btn-primary btn-lg" href="${context_path}/libros">VOLVER</a>
      </div>
    </div>
  </body>
</html>
