class Persona {
	var property provincia
	
	method puedeSerAtendido(profesional) {
		return profesional.provinciasDondePuedeTrabajar().any{ p => p == provincia }
	}
	
}

class Institucion {
	var property universidades
	
	method puedeSerAtendido(profesional) {
		return universidades.contains{profesional.universidad()}
	} 
}