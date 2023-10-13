<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Iniciar Sesion</h1>
        <form name="j_security_form" method="post" action="j_security_check">
            <div>
                <input type="text" name="j_username" class="form-control" id="floatingUser" placeholder="Usuario">
                <label for="fliatingUser">Usuario</label>
            </div>
            <div>
                <input type="password" name="j_password" class="form-control" id="floatingPassword" placeholder="Password">
                <label for="fliatingUser">Password</label>
            </div>
            
            <p><button type="submit" class=""></button></p>
        </form>
    </body>
</html>
