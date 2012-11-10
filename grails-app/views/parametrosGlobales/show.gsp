
<%@ page import="hotelposada.ParametrosGlobales" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="vista" />
        <g:set var="entityName" value="${message(code: 'parametrosGlobales.label', default: 'ParametrosGlobales')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        
        <div class="post">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="parametrosGlobales.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: parametrosGlobalesInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="parametrosGlobales.adelanto_reserva.label" default="Adelantoreserva" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: parametrosGlobalesInstance, field: "adelanto_reserva")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="parametrosGlobales.comp_47a24.label" default="Comp47a24" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: parametrosGlobalesInstance, field: "comp_47a24")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="parametrosGlobales.comp_5a2.label" default="Comp5a2" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: parametrosGlobalesInstance, field: "comp_5a2")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="parametrosGlobales.comp_m24.label" default="Compm24" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: parametrosGlobalesInstance, field: "comp_m24")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="parametrosGlobales.precio_cat_alta.label" default="Preciocatalta" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: parametrosGlobalesInstance, field: "precio_cat_alta")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="parametrosGlobales.precio_cat_business.label" default="Preciocatbusiness" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: parametrosGlobalesInstance, field: "precio_cat_business")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="parametrosGlobales.precio_cat_normal.label" default="Preciocatnormal" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: parametrosGlobalesInstance, field: "precio_cat_normal")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="parametrosGlobales.precio_h_doble.label" default="Preciohdoble" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: parametrosGlobalesInstance, field: "precio_h_doble")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="parametrosGlobales.precio_h_normal.label" default="Preciohnormal" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: parametrosGlobalesInstance, field: "precio_h_normal")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="parametrosGlobales.precio_infantil.label" default="Precioinfantil" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: parametrosGlobalesInstance, field: "precio_infantil")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${parametrosGlobalesInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Editar Variables Globales')}" /></span>
              </g:form>
            </div>
        </div>
    </body>
</html>
