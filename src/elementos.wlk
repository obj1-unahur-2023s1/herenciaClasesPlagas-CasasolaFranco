class Hogar inherits Elemento {
	var property confort
	
	method nivelDeMugre() = nivel
	
	method esBueno() {return (self.nivelDeMugre() >= confort/2)}
}

class Elemento {
	var property nivel
}

class Huerta inherits Elemento {
	var property capacidadProduccion
	var property nivelComun = 10
	
	method nivelComun() = nivelDeHuertas.nivel()

	method esBueno() = capacidadProduccion > self.nivelComun()
}

class Mascota inherits Elemento {
	method nivelDeSalud() = nivel
	
	method esBueno() = self.nivelDeSalud() > 250
}

object nivelDeHuertas {
	var property nivel
}

class Barrio {
	const elementos = []
	
	method agregarElemento(elemento) {
		elementos.add(elemento)
	}
	
	method elementos() = elementos
	
	method esCopado() {
		const elementosBuenos = elementos.count({elemento => elemento.esBueno()})
		const elementosMalos = elementos.count({elemento => !elemento.esBueno()})
		return elementosBuenos > elementosMalos
	}
}