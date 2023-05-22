class Plaga {
	var property poblacion
	
	method puedeTransmitirEnfermedades() = poblacion > 10
	
	method efectoDelAtaque() {
		poblacion += poblacion * 0.1
	}
}

class Cucarachas inherits Plaga {
	var property pesoPromedio 
	
	method nivelDeDanio() = poblacion / 2
	
	method transmiteEnfermedades() = self.puedeTransmitirEnfermedades() && pesoPromedio >= 10

	override method efectoDelAtaque() {
		super()
		pesoPromedio += 2
	}
} 

class Parasito inherits Plaga {
	method nivelDeDanio() = poblacion * 2
	
	method transmitenEnfermedades() = self.puedeTransmitirEnfermedades()
}

class Mosquito inherits Plaga {
	method nivelDeDanio() = poblacion
	
	method transmiteEnfermedades() = self.puedeTransmitirEnfermedades() && (poblacion % 3 == 0)
}


