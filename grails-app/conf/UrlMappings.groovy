class UrlMappings {

	static mappings = {
		name login: "/inscripcion/login"(controller: "inscripcion", action: "index")
		
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(view:"/index")
		"500"(view:'/error')
	}
}
