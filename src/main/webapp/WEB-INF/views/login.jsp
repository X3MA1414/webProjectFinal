<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

    <!DOCTYPE html>
    <html lang="es">

    <head>
      <title>Inicio</title>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <c:choose wheN="EF">

    </c:choose>
    <c:otherwhise>

    </c:otherwhise>
    <body>
      <div class="container">
        <div class="row justify-content-md-center">
          <div class="col col-lg-2">
            <div class="mb-3">
              <form:form name="submitForm" method="POST">
                <label for="exampleFormControlInput1" class="form-label">Usuario</label>
                <input type="text" class="form-control" name="userName">
                <label for="exampleFormControlInput1" class="form-label">Contraseña</label>
                <input type="password" class="form-control" name="password">
                <button type="submit" value="Submit"
                  class="btn btn-primary mt-2 justify-content-md-center">Enviar</button>
              </form:form>
              <div style="color: red">${error}</div>
            </div>
          </div>
        </div>
      </div>
    </body>

    </html>