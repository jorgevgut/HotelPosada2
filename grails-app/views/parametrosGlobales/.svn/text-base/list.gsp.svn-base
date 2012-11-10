
<%@ page import="hotelposada.ParametrosGlobales" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'parametrosGlobales.label', default: 'ParametrosGlobales')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
           
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'parametrosGlobales.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="adelanto_reserva" title="${message(code: 'parametrosGlobales.adelanto_reserva.label', default: 'Adelantoreserva')}" />
                        
                            <g:sortableColumn property="comp_47a24" title="${message(code: 'parametrosGlobales.comp_47a24.label', default: 'Comp47a24')}" />
                        
                            <g:sortableColumn property="comp_5a2" title="${message(code: 'parametrosGlobales.comp_5a2.label', default: 'Comp5a2')}" />
                        
                            <g:sortableColumn property="comp_m24" title="${message(code: 'parametrosGlobales.comp_m24.label', default: 'Compm24')}" />
                        
                            <g:sortableColumn property="precio_cat_alta" title="${message(code: 'parametrosGlobales.precio_cat_alta.label', default: 'Preciocatalta')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${parametrosGlobalesInstanceList}" status="i" var="parametrosGlobalesInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td>
                              <g:form>
                    <g:hiddenField name="id" value="${parametrosGlobalesInstance?.id}" />
                        <g:actionSubmit class="edit" action="edit" value="Editar Variables Globales" />
                        </g:form>
                            <td>${fieldValue(bean: parametrosGlobalesInstance, field: "adelanto_reserva")}</td>
                        
                            <td>${fieldValue(bean: parametrosGlobalesInstance, field: "comp_47a24")}</td>
                        
                            <td>${fieldValue(bean: parametrosGlobalesInstance, field: "comp_5a2")}</td>
                        
                            <td>${fieldValue(bean: parametrosGlobalesInstance, field: "comp_m24")}</td>
                        
                            <td>${fieldValue(bean: parametrosGlobalesInstance, field: "precio_cat_alta")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${parametrosGlobalesInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
