package facultad

class Profesor {

	String nombre
	String apellido

	String toString() {
		"profesor ${apellido}, ${nombre}"
	}

    static constraints = {
    }
}
