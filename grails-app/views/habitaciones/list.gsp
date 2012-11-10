
<%@ page import="hotelposada.Habitaciones" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

        <meta name="layout" content="vista" />
        
        <g:set var="entityName" value="${message(code: 'habitaciones.label', default: 'Habitaciones')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
      <div class="post">
        <div class="nav">
          <ul>
            <li><g:link controller="consulta" action="index">Consulta de reservas</g:link></li>
         <auth:ifLoggedIn> <li><g:link controller="habitaciones" action="list">Consulta de Habitaciones</g:link></li></auth:ifLoggedIn>
          </ul>
        </div>
        <h1>Consulta de habitaciones</h1>
      <p>El hotel posada cuenta con 55 habitaciones de diferentes tipos y categorias.</p>
      <p>Aqui usted puede consultar el estado actual de dichas habitaciones</p>
        <div class="body">
            <h1>Listado del estado actual de habitaciones del Hotel Posada</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'habitaciones.id.label', default: 'Numero')}" />
                            <g:sortableColumn property="id" title="${message(code: 'habitaciones.tipo.label', default: 'Tipo')}" />
                        <g:sortableColumn property="id" title="${message(code: 'habitaciones.categoria.label', default: 'Categoria')}" />
                            <g:sortableColumn property="estado" title="${message(code: 'habitaciones.estado.label', default: 'Estado')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${habitacionesInstanceList}" status="i" var="habitacionesInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><b>${fieldValue(bean: habitacionesInstance, field: "id")}</b></td>
                            <td>${fieldValue(bean: habitacionesInstance, field: "tipo")}</td>
                            <td>${fieldValue(bean: habitacionesInstance, field: "categoria")}</td>
                            <td>${fieldValue(bean: habitacionesInstance, field: "estado")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${habitacionesInstanceTotal}" />
            </div>
        </div>
        </div>
    </body>
</html>
