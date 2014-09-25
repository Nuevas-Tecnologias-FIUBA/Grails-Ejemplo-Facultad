<%@ page import="facultad.Alumno" %>



<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="alumno.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${alumnoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'apellido', 'error')} required">
	<label for="apellido">
		<g:message code="alumno.apellido.label" default="Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido" required="" value="${alumnoInstance?.apellido}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'edad', 'error')} required">
	<label for="edad">
		<g:message code="alumno.edad.label" default="Edad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="edad" type="number" value="${alumnoInstance.edad}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'padron', 'error')} required">
	<label for="padron">
		<g:message code="alumno.padron.label" default="Padron" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="padron" required="" value="${alumnoInstance?.padron}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'sexo', 'error')} ">
	<label for="sexo">
		<g:message code="alumno.sexo.label" default="Sexo" />
		
	</label>
	<g:select name="sexo" from="${alumnoInstance.constraints.sexo.inList}" value="${alumnoInstance?.sexo}" valueMessagePrefix="alumno.sexo" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'saldo', 'error')} required">
	<label for="saldo">
		<g:message code="alumno.saldo.label" default="Saldo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="saldo" type="number" value="${alumnoInstance.saldo}" required=""/>
</div>

