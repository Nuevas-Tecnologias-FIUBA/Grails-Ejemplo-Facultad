import facultad.*

class BootStrap {

    def init = { servletContext ->
    
		new Profesor(nombre: "pablo", apellido: "cosso").save()
    }
    def destroy = {
    }
}
