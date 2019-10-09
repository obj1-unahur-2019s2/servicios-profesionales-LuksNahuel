class EmpresaDeServicios {
	var property profesionales = #{}
	var property honorarioReferencia
	
	/*method agregarProfesional(profesional) {
		profesionales.add(profesional)
	}*/
	
	method cuantosEstudiaronEn(universidad) {
		return profesionales.count{p => p.universidad() == universidad }
		//return profesionales.filter{p => p.universidad() == universidad }.size()
	}
	
	method profesionalesCaros() {
		return profesionales.filter{p => p.honorariosPorHora() > honorarioReferencia }
	}
	
	method universidadesFormadoras() {
		return profesionales.map{ p => p.universidad() }.asSet()
	}
	
	method profesionalMasBarato() {
		return profesionales.min{p => p.honorariosPorHora() }
	}
	
	method esDeGenteAcotada() {
		return profesionales.all{p => p.provinciasDondePuedeTrabajar().size() <= 3}
		//return profesionales.all{ p => p.esAcotado() }
	}
	
	method puedeSatisfacer(solicitante) {
		return profesionales.any{p => solicitante.puedeSerAtendido(p)}
	}
}