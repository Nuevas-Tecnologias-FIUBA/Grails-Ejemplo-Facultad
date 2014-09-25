package facultad

class AltaAlumnoCommand {
	String nombre
	String apellido

    static constraints = {
		nombre blank: false, nullable: false
		apellido blank: false, nullable: false
    }
}




















class AltaMateriaCommand {
	String nombre
	Integer codigo
	Integer dictadaPor

	static constraints = {
		nombre nullable: false
		codigo nullable: false
		dictadaPor nullable: false
	}
}



class InscripcionController {

	def index() {
	}

	def relacion() {
		
		def profesores = Profesor.withCriteria {
			or {
				eq('nombre', 'pablo')
				eq('nombre', 'saladino')
			}

			ne('apellido', 'perez')
		}
		
		[profesores: profesores]
	}

	def altaMateria(AltaMateriaCommand command) {
		if (!command.hasErrors()) {
			Profesor dictadaPor = Profesor.get(command.dictadaPor)
			if (!dictadaPor) throw new RuntimeException("no existe")

			Materia m = new Materia(
				nombre: command.nombre,
				codigo: command.codigo,
				dictadaPor: dictadaPor
			)
			m.save(failOnError: true)

			
			render "listo"
		} else {
			render "error"
		}
	}

	def grabar(AltaAlumnoCommand alumno) {
		if (!alumno.hasErrors()) {
			Alumno otro = new Alumno(alumno)
			otro.save(failOnError: true)

			redirect action: "ver", id: otro.id
		} else {
			render view: "index", model: [
				error: 1,
				alumno: alumno,
			]
		}
	}

	def ver(Long id) {
		Alumno alumno = Alumno.get(id)
		[alumno: alumno]
	}
}
