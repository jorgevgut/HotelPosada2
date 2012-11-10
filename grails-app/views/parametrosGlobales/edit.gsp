

<%@ page import="hotelposada.ParametrosGlobales" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="vista" />
        <g:set var="entityName" value="${message(code: 'parametrosGlobales.label', default: 'ParametrosGlobales')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="post">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${parametrosGlobalesInstance}">
            <div class="errors">
                <g:renderErrors bean="${parametrosGlobalesInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" onsubmit="return confirm('Al ejecutar esta operación se modificaran los parametros globales.¿Seguro desea continuar?')">
                <g:hiddenField name="id" value="${parametrosGlobalesInstance?.id}" />
                <g:hiddenField name="version" value="${parametrosGlobalesInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="adelanto_reserva"><g:message code="parametrosGlobales.adelanto_reserva.label" default="Adelantoreserva" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: parametrosGlobalesInstance, field: 'adelanto_reserva', 'errors')}">
                                    <g:textField name="adelanto_reserva" value="${fieldValue(bean: parametrosGlobalesInstance, field: 'adelanto_reserva')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="comp_47a24"><g:message code="parametrosGlobales.comp_47a24.label" default="Comp47a24" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: parametrosGlobalesInstance, field: 'comp_47a24', 'errors')}">
                                    <g:textField name="comp_47a24" value="${fieldValue(bean: parametrosGlobalesInstance, field: 'comp_47a24')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="comp_5a2"><g:message code="parametrosGlobales.comp_5a2.label" default="Comp5a2" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: parametrosGlobalesInstance, field: 'comp_5a2', 'errors')}">
                                    <g:textField name="comp_5a2" value="${fieldValue(bean: parametrosGlobalesInstance, field: 'comp_5a2')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="comp_m24"><g:message code="parametrosGlobales.comp_m24.label" default="Compm24" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: parametrosGlobalesInstance, field: 'comp_m24', 'errors')}">
                                    <g:textField name="comp_m24" value="${fieldValue(bean: parametrosGlobalesInstance, field: 'comp_m24')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="precio_cat_alta"><g:message code="parametrosGlobales.precio_cat_alta.label" default="Preciocatalta" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: parametrosGlobalesInstance, field: 'precio_cat_alta', 'errors')}">
                                    <g:textField name="precio_cat_alta" value="${fieldValue(bean: parametrosGlobalesInstance, field: 'precio_cat_alta')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="precio_cat_business"><g:message code="parametrosGlobales.precio_cat_business.label" default="Preciocatbusiness" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: parametrosGlobalesInstance, field: 'precio_cat_business', 'errors')}">
                                    <g:textField name="precio_cat_business" value="${fieldValue(bean: parametrosGlobalesInstance, field: 'precio_cat_business')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="precio_cat_normal"><g:message code="parametrosGlobales.precio_cat_normal.label" default="Preciocatnormal" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: parametrosGlobalesInstance, field: 'precio_cat_normal', 'errors')}">
                                    <g:textField name="precio_cat_normal" value="${fieldValue(bean: parametrosGlobalesInstance, field: 'precio_cat_normal')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="precio_h_doble"><g:message code="parametrosGlobales.precio_h_doble.label" default="Preciohdoble" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: parametrosGlobalesInstance, field: 'precio_h_doble', 'errors')}">
                                    <g:textField name="precio_h_doble" value="${fieldValue(bean: parametrosGlobalesInstance, field: 'precio_h_doble')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="precio_h_normal"><g:message code="parametrosGlobales.precio_h_normal.label" default="Preciohnormal" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: parametrosGlobalesInstance, field: 'precio_h_normal', 'errors')}">
                                    <g:textField name="precio_h_normal" value="${fieldValue(bean: parametrosGlobalesInstance, field: 'precio_h_normal')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="precio_infantil"><g:message code="parametrosGlobales.precio_infantil.label" default="Precioinfantil" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: parametrosGlobalesInstance, field: 'precio_infantil', 'errors')}">
                                    <g:textField name="precio_infantil" value="${fieldValue(bean: parametrosGlobalesInstance, field: 'precio_infantil')}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="Guardar variables globales" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
