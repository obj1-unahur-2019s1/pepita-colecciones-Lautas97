import pepita.*
import comidas.*
import masAves.*

object roque {
	var pupilos = []
	
	method agregarPupilo(ave){
		pupilos.add(ave)
	}
	method dejarPupilo(ave){
		pupilos.remove(ave)
	}
	
	method tieneComoPupilo(ave){
		return pupilos.contains(ave)
	}
	method cuantosPupilosTiene(){
		return pupilos.size()
		}
	//method pupiloActual() { return pupilo }

	method entrenar() {
		pupilos.forEach({pupilo =>
			
			pupilo.volar(10)
			pupilo.comer(alpiste,30)
			pupilo.volar(5)
			pupilo.haceLoQueQuieras()
		}) 
		
	} 
	method pupilosCapasesDeVolar(unosKms){
		return pupilos.filter({ pupilo => pupilos.puedevolar(unosKms) })
		
	}
	
	method pupilosFortachones(){
		return pupilos.filter({ pupilo => pupilo.energia()>100 })
	}
}