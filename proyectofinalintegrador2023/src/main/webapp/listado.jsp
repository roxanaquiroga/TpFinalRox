<%@page import="java.util.List"%>
<%@page import="com.codoacodo.dto.Producto"%>
<!DOCTYPE html>
<html lang="es-ar" data-bs-theme="light">
    <head>
        <%@include file="head.jsp" %>
        <title>
          Listado
        </title>	
    </head>
	
    <body>
        <!-- ACA VA EL NAVBAR  -->
        <%@include file="navbar.jsp" %>
        <main>
            <div class="container">
                
                <section class="bg-secondary-subtle border rounded-5 m-4 px-2 pt-2 pb-3 col-12 mx-auto text-center">
      <h2 class="my-4">Listado</h2>
      <table class="table table-sm table-striped table-hover border border-success">
                      <thead>
                        <tr>
                          <th scope="col"> </th>
                          <th scope="col"> ORADORES </th>
                          <th scope="col"> TEMA </th>
                          <th scope="col">  </th>
                          <th scope="col">  </th>
                          <th scope="col">  </th>
                        </tr>
                      </thead>
          <% 
                //codigo java
                //obtener el listado desde el request
                //se guardo bajo el nombre de "listado"
            List<Producto> listado = (List<Producto>)request.getAttribute("listado");
          %>
        <tbody>
            <%
                 for( Producto  unProducto : listado) {
            %>

             <tr>
                <th scope="row"> <%=unProducto.getIdProducto()%> </th>
                <td><%=unProducto.getNombre() %></td>
                <td><%=unProducto.getPrecio() %></td>
                <td><%=unProducto.getCodigo() %></td>
                <td><%=unProducto.getHechoEn() %></td>
                <td>
                  <a class="btn btn-danger" href="<%=request.getContextPath()%>/api/EliminarController?id=<%=unProducto.getIdProducto()%>" role="button">Eliminar</a> | 
                  <a class="btn btn-secondary" href="<%=request.getContextPath()%>/api/EditarController?id=<%=unProducto.getIdProducto()%>" role="button">Editar</a>
                </td>
              </tr>
             <%
                  }
             %>

        </tbody>
      </table>
    </section>

                      
            </div>
        </main>
    </body>	
</html>