
<%@ page import="facultad.Alumno" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'alumno.label', default: 'Alumno')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-alumno" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-alumno" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list alumno">
			
				<g:if test="${alumnoInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="alumno.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${alumnoInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.apellido}">
				<li class="fieldcontain">
					<span id="apellido-label" class="property-label"><g:message code="alumno.apellido.label" default="Apellido" /></span>
					
						<span class="property-value" aria-labelledby="apellido-label"><g:fieldValue bean="${alumnoInstance}" field="apellido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.edad}">
				<li class="fieldcontain">
					<span id="edad-label" class="property-label"><g:message code="alumno.edad.label" default="Edad" /></span>
					
						<span class="property-value" aria-labelledby="edad-label"><g:fieldValue bean="${alumnoInstance}" field="edad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.padron}">
				<li class="fieldcontain">
					<span id="padron-label" class="property-label"><g:message code="alumno.padron.label" default="Padron" /></span>
					
						<span class="property-value" aria-labelledby="padron-label"><g:fieldValue bean="${alumnoInstance}" field="padron"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.sexo}">
				<li class="fieldcontain">
					<span id="sexo-label" class="property-label"><g:message code="alumno.sexo.label" default="Sexo" /></span>
					
						<span class="property-value" aria-labelledby="sexo-label"><g:fieldValue bean="${alumnoInstance}" field="sexo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.saldo}">
				<li class="fieldcontain">
					<span id="saldo-label" class="property-label"><g:message code="alumno.saldo.label" default="Saldo" /></span>
					
						<span class="property-value" aria-labelledby="saldo-label"><g:fieldValue bean="${alumnoInstance}" field="saldo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${alumnoInstance?.id}" />
					<g:link class="edit" action="edit" id="${alumnoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
