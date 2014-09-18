package facultad

class InscripcionController {

	def index() {
	}

	def grabar() {
		String nombre = params.nombre
		String apellido = params.apellido

		if (!nombre || !apellido) {
			render view: "index", model: [error: 1, nombre: nombre, apellido: apellido]
			return
		}

		Alumno nuevo = new Alumno(
			nombre: nombre,
			apellido: apellido,
			edad: 20,
			padron: "10000",
			sexo: "femenino"
		)
		nuevo.save(failOnError: true)
		redirect action: "ver", id: nuevo.id
	}

	def ver(Long id) {
		Alumno alumno = Alumno.get(id)
		[alumno: alumno]
	}
}
