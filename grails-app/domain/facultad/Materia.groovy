package facultad

class Materia {

	String nombre
	int codigo

	Profesor dictadaPor

    static constraints = {
		dictadaPor nullable: false
    }
}
