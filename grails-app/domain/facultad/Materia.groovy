package facultad

class Materia {

	String nombre
	int codigo

	Profesor profesor

    static constraints = {
		profesor nullable: false
    }
}
