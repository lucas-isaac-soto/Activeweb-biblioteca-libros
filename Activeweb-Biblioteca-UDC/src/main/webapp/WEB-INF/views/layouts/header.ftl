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
    <div class="row">
      <div class="container-fluid cabecera">
        <nav class="navbar bg-brown row">
          <!--BARRA DE LOGO-->
          <div class="col-1 ms-3">
            <a class="navbar-brand ms-3 col-1" href="${context_path}/">
              <i class="bi bi-book" id="logo"></i>
              Biblioteca UDC
            </a>
          </div>

          <!--BARRA DE BUSQUEDA-->
          <div class="col-5">
            <form class="d-flex" action="">
              <input
                class="form-control me-sm-2"
                type="search"
                placeholder="Buscar Libro"
                aria-label="Search"
              />
              <button class="btn btn-warning my-2 my-sm-0" type="submit">
                Buscar
              </button>
            </form>
          </div>

            <#if session.usuario?has_content>
                <#include "fragmento-logeado.ftl">
            <#else>
                <#include "fragmento-no-logeado.ftl">
            </#if>
            
        </nav>
      </div>
    </div>
  </body>
</html>

