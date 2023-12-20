<%@page import="com.codoacodo.dto.Producto"%>
<html>
    <head>
            <%@include file="head.jsp" %>	
    </head>

    <body>
        <main>
            <!-- ACA VA EL NAVBAR  -->
            <%@include file="navbar.jsp" %>
            <div class="container">
                <section>
                    <% 
                        Producto producto = (Producto)request.getAttribute("producto");
                    %>
                    <h1>Editar producto ID=<%=producto.getIdProducto()%></h1>
                    <!--  JSP -->
                    <form method="POST"
                            action="<%=request.getContextPath()%>/api/EditarController">
                            <div class="mb-3">
                              <label for="exampleFormControlInput1" class="form-label">Nombre</label>
                              <input name="nombre"
                                    value="<%=producto.getNombre()%>"  
                                    type="text" class="form-control" id="exampleFormControlInput1" placeholder="Nombre" maxlength="50">
                            </div>
                            <div class="mb-3">
                              <label for="exampleFormControlTextarea1" class="form-label">Precio</label>
                              <input name="precio"
                                    value="<%=producto.getPrecio()%>" 
                                    type="number" class="form-control" id="exampleFormControlTextarea1">
                            </div>
                            <div class="my-3 mx-3">
                                <label for="hechoEn" class="form-label">Hecho en</label>
                                <input value="<%=producto.getHechoEn()%>" name="hechoEn" type="text" class="form-control" id="hechoTextarea" placeholder="Hecho en" maxlength="50">
                            </div>
                            <div class="mb-3">
                              <label for="exampleFormControlTextarea1" class="form-label">C&oacute;digo</label>
                              <input name="codigo"
                                    readonly="readonly"
                                    value="<%=producto.getCodigo()%>" 
                                    type="text" class="form-control" id="exampleFormControlTextarea1" maxlength="7">
                            </div>
                            <button class="btn btn-primary">
                                Grabar
                            </button>
                    </form>
                </section>
            </div>
        </main>
    </body>	
</html>