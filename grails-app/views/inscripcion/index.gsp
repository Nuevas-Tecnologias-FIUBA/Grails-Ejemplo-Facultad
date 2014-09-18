<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
	</head>
	<body>
		<g:if test="${error}">
			<span style="color: red;">hubo "errores"</span>
			<g:if test="${!nombre}">
				nombre mal
			</g:if>
			<g:if test="${!apellido}">
				apellido mal
			</g:if>
		</g:if>
		
		<g:form controller="inscripcion" action="grabar">
			nombre: <input type="text" name="nombre" value="${nombre}" />
			<br/>
			apellido: <input type="text" name="apellido" value="${apellido}" />
			
			<br/>

			<input type="submit" value="crear un alumno nuevo" />
		</g:form>
	</body>
</html>
