<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css" />
    </head>
    <body>
        <div class="row">
            <div class="container-fluid cabecera">
                <nav class="navbar bg-brown row">
                    <!--BARRA DE LOGO-->
                    <div class="col-1 ms-3">
                        <a class="navbar-brand ms-3 col-1" href="${pageContext.request.contextPath}/">
                            <i class="bi bi-book" id="logo"></i>
                            Biblioteca UDC
                        </a>
                    </div>

                </nav>
            </div>
        </div>
        
        <div class="container-fluid login-body">
            <div class="row mb-5 mt-5">
                <h1 class="text-center">Iniciar Sesion</h1>
            </div>
            <div class="row">
                <div class="container login-card col-6">
                    <form
                        name="j_security_form"
                        class=""
                        method="post"
                        action="j_security_check"
                        >
                        <!--INPUT USUARIO-->
                        <div class="row mb-3 pt-4">
                            <label for="user" class="col-1 col-form-label">Usuario</label>
                            <div class="col-4">
                                <input
                                    type="text"
                                    name="j_username"
                                    class="form-control"
                                    aria-describedby="userHelp"
                                    id="user"
                                    placeholder="Usuario"
                                    />
                            </div>
                        </div>
                        <!--INPUT CONTRASENIA-->
                        <div class="row">
                            <label for="fliatingPassword" class="col-1 col-form-label"
                                   >Password</label
                            >
                            <div class="col-4">
                                <input
                                    type="password"
                                    name="j_password"
                                    class="form-control"
                                    id="fliatingPassword"
                                    placeholder="Password"
                                    />
                            </div>
                            <div class="mb-3 form-check mt-3 ms-3">
                                <input
                                    type="checkbox"
                                    class="form-check-input"
                                    id="exampleCheck1"
                                    />
                                <label class="form-check-label" for="exampleCheck1"
                                       >Mantener conectado?</label
                                >
                            </div>

                            <a href="${pageContext.request.contextPath}/">olvidaste la contrasenia?</a>
                        </div>

                        <a href="${pageContext.request.contextPath}/">
                            <button type="button" class="btn btn-danger mt-5 mb-3 me-3">
                                Volver
                            </button>
                        </a>
                        <button type="submit" class="btn btn-primary mt-5 mb-3">
                            Continuar
                        </button>
                    </form>
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
