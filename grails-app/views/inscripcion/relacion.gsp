<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
	</head>
	<body>
		
		<g:form controller="inscripcion" action="altaMateria">
			nombre de la materia: <g:textField name="nombre" />
			
			<br/>
			
			codigo de la materia: <g:textField name="codigo" />
			
			<br/>
			
			quien dicta la materia?
			<g:select
				name="dictadaPor"
				optionKey="id"
				optionValue="nombre"
				from="${profesores}" />
				
				<br/>
			<input type="submit" value="dale" />
		</g:form>
	</body>
</html>
