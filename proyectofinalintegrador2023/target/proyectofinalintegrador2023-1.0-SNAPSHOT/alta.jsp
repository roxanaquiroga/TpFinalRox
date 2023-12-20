<html>
    <head>
            <%@include file="head.jsp" %>
    </head>

    <body>
        <main>
            <!-- ACA VA EL NAVBAR  -->
            <%@include file="navbar.jsp" %>
            <div class="container">
                <section class="border border-primary rounded-4 col-6 mx-auto text-center" style="background-color: aquamarine">
                    <h1 class="text-center my-4">Alta</h1>
                    <!--  JSP -->
                    <form method="post"
                        action="<%=request.getContextPath()%>/CreateController">
                        <div class="my-3 mx-3">
                          <input name="nombre"  type="text" class="form-control" id="nombreTextarea" placeholder="Nombre" maxlength="50">
                        </div>
                        <div class="my-3 mx-3">
                          <input name="precio" type="number" class="form-control" id="precioNumber" placeholder="Precio">
                        </div>
                        <div class="my-3 mx-3">
                          <input name="hechoEn" type="text" class="form-control" id="hechoTextarea" placeholder="Hecho en" maxlength="50">
                        </div>
                        <div class="my-3 mx-3">
                          <input name="codigo" type="text" class="form-control" id="codigoTextarea" maxlength="7" placeholder="Código">
                        </div>
                        <button class="btn btn-primary my-3">
                            Dar de alta
                        </button>
                    </form>
                </section>
            </div>
        </main>
    </body>	
</html>