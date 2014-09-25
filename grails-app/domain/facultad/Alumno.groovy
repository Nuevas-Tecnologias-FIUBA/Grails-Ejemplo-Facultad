package facultad

class Alumno {

	String nombre
	String apellido

	int edad = 20
	String padron = "1000"
	String sexo = "masculino"

	long saldo = 0

    static constraints = {
		nombre blank: false, nullable: false
		apellido blank: false, nullable: false

		edad nullable: false

		padron blank: false, nullable: false

		sexo inList: ["masculino", "femenino"]
    }
    
    Alumno(def cmd) {
		this.nombre = cmd.nombre
		this.apellido = cmd.apellido
	}
}
