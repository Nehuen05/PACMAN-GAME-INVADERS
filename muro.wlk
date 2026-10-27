import wollok.game.*
import invasor.*

class Muro {
    method image() = "muro.png"
    var property position

    method esSolido() { return true}

    method matar() {
        // No hace nada, el muro no puede ser destruido
        game.onCollideDo(self, { unPersonaje => unPersonaje.destruir() })
    }

 }