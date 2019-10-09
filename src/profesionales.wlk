class ProfesionalAsociado {
	var property universidad
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
	
	method esAcotado() {
		return true
	}
}



class ProfesionalVinculado {
	var property universidad
	
	method provinciasDondePuedeTrabajar() { return #{universidad.provincia()} }
	
	method honorariosPorHora() { return universidad.honorarioRecomendado() }
	
	method esAcotado() { return true }
}



class ProfesionalLibre {
	var property universidad
	
	const provincias = #{}
	
	var property honorariosPorHora
	
	method agregarProvincia(prov) {
		provincias.add(prov)
	}
	
	method provinciasDondePuedeTrabajar() { return provincias }
	
	method esAcotado() { 
		return not (provincias.size() > 3)
	}
	
}
