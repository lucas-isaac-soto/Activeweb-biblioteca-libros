<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>

    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css"
    />
    <link rel="stylesheet" href="${context_path}/css/header.css" />
  </head>

  <body>
    <!--BARRA DE USUARIO-->
    <div class="d-flex col-1 justify-content-end me-4">
      <div class="btn-group">
        <button type="button" class="btn btn-secondary">${session.usuario}</button>
        <button
          type="button"
          class="btn btn-secondary"
          data-bs-toggle="dropdown"
          aria-haspopup="true"
          aria-expanded="false"
        >
          <span class="sr-only"><i class="bi bi-list"></i></span>
        </button>

        <div class="dropdown-menu">
            <a class="dropdown-item" href="#">Perfil</a>
            <a class="dropdown-item" href="${context_path}/libros">Biblioteca</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item cerrar-sesion" href="#">
                  <button
                    type="button"
                    class="btn"
                    data-bs-toggle="modal"
                    data-bs-target="#exampleModal"
                  >
                    Cerrar Sesion
                  </button>
            </a>
        </div>
      </div>
    </div>

    <!-- MODAL PARA CERRA SESION -->
    <div
      class="modal fade"
      id="exampleModal"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Cerrar Sesion</h5>
            <button
              type="button"
              class="close"
              data-bs-dismiss="modal"
              aria-label="Close"
            >
              <span aria-hidden="true" class="bi bi-x"></span>
            </button>
          </div>
          <div class="modal-body">Usted esta a punto de cerrar sesion.</div>
          <div class="modal-footer">
            <button
              type="button"
              class="btn btn-secondary"
              data-bs-dismiss="modal"
            >
              Cancelar
            </button>

            <!--ACA ADENTRO VA EL BOTON QUE HACE QUE EL CONTROLADOR ACTIVE EL CERRAR CESION-->
            <a class="" href="${context_path}/home/cerrarSession">
                <button type="button" class="btn btn-danger">Cerrar Sesion</button>
            </a>
          </div>
        </div>
      </div>
    </div>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
