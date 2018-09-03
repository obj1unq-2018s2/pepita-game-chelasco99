import comidas.*
import ciudades.*
import pepita.*

object roque {
	var property posicion = game.at(0,0)
	var tengoComida = null
	
	method imagen() = "jugador.png"

	method move(nuevaPosicion) {
		self.posicion(nuevaPosicion)
	}
	
	method agarraComida(comida) {
		if ( tengoComida != null ) {
			game.addVisualIn(tengoComida, posicion.up(1))
		}
		tengoComida = comida
	}
	
	method alimentarA(ave) {
		if ( tengoComida != null ) {
			ave.come(tengoComida)
		}
		tengoComida = null
	}
 }
