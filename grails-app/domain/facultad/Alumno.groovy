package facultad

class Alumno {

	String nombre
	String apellido
	
	int edad

	String padron

	String sexo

    static constraints = {
		nombre blank: false, nullable: false
		apellido blank: false, nullable: false

		edad nullable: false

		padron blank: false, nullable: false

		sexo inList: ["masculino", "femenino"]
    }
}
