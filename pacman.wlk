import wollok.game.*
import direcciones.*

object pacman {
    
    var position = game.center()
    var direccionActual = derecha

    method image(){
        return "pacman-" + direccionActual.nombreDireccion() + ".png"
    }

    method position(){
        return position
    }
    	method mover(direccion) {
		const nuevaPosition = direccion.siguiente(position) 
		position = nuevaPosition
        direccionActual = direccion
	}
}