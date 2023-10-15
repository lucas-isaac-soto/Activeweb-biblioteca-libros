<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
   
    <link rel="stylesheet" href="${context_path}/css/libros.css"/>

    <title>Listado de libros</title>
  </head>
  <body>

    <div class="container-md principal mt-5">
      <div class="row">
        <div class="col my-4">
          <h2 class="text-center">Biblioteca de libros (${biblioteca?size})</h2>
        </div>
      </div>

      <div class="row">
        <div class="col">
          <table class="table table-striped table-bordered">
            <thead>
              <th class="col-1">ISBM</th>
              <th class="col-4">Titulo</th>
              <th class="col-3">Editorial</th>
              <th class="col-3">Autor</th>
              <#if session.rol == "vermas">
                <th class="col-1">Acciones</th>
              </#if>
            </thead>

            <tbody>
                <#list biblioteca as libro>
                    <tr>
                        <td class="align-middle">${libro.isbm}</td>
                        <td class="align-middle">${libro.titulo}</td>
                        <td class="align-middle">${libro.editorial}</td>
                        <td class="align-middle">${libro.autor.apellido}</td>
                        <#if session.rol == "vermas">
                            <td class="text-center">
                                <a href="${context_path}/libros/detalles?isbm=${libro.isbm}">
                                    <button type="button" class="btn btn-warning btn-md">
                                    <i class="bi bi-eye"></i>
                                    </button>
                                </a>
                            </td>
                        </#if>
                    </tr>
                </#list>
            </tbody>
          </table>
        </div>
      </div>
    </div>

  </body>
</html>