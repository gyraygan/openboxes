
<%@ page import="org.pih.warehouse.core.EventType" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="custom" />
        <g:set var="entityName" value="${message(code: 'eventType.label', default: 'EventType')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <!-- Specify content to overload like global navigation links, page titles, etc. -->
		<content tag="pageTitle"><g:message code="default.list.label" args="[entityName]" /></content>
    </head>
    <body>
        <div class="body">
            <g:if test="${flash.message}">
            	<div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
            
				<div>            	
	            	<span class="menuButton">
	            		<g:link class="new" action="create"><g:message code="default.add.label" args="['eventType']"/></g:link>
	            	</span>
            	</div>
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'eventType.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="name" title="${message(code: 'eventType.name.label', default: 'Name')}" />
                        
                            <g:sortableColumn property="description" title="${message(code: 'eventType.description.label', default: 'Description')}" />
                        
                            <g:sortableColumn property="sortOrder" title="${message(code: 'eventType.sortOrder.label', default: 'Sort Order')}" />
                        
                            <g:sortableColumn property="eventCode" title="${message(code: 'eventType.eventCode.label', default: 'Event Status')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${eventTypeInstanceList}" status="i" var="eventTypeInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="edit" id="${eventTypeInstance.id}">${fieldValue(bean: eventTypeInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: eventTypeInstance, field: "name")}</td>
                        
                            <td>${fieldValue(bean: eventTypeInstance, field: "description")}</td>
                        
                            <td>${fieldValue(bean: eventTypeInstance, field: "sortOrder")}</td>
                        
                            <td>${fieldValue(bean: eventTypeInstance, field: "eventCode")}</td> 
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${eventTypeInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
