<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
	</head>
	<body>
		<g:if test="${error}">
			<g:hasErrors bean="${alumno}">
				<ul class="errors" role="alert">
					<g:eachError bean="${alumno}" var="error">
						<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
					</g:eachError>
				</ul>
			</g:hasErrors>

		</g:if>
		
		<g:form controller="inscripcion" action="grabar">
			nombre: <input type="text" name="nombre" value="${alumno?.nombre}" />
			<br/>
			apellido: <input type="text" name="apellido" value="${alumno?.apellido}" />
			
			<br/>

			<input type="submit" value="crear un alumno nuevo" />
		</g:form>
	</body>
</html>
