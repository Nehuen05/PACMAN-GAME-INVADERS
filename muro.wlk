import wollok.game.*

class Muro {
    method image() = "muro.png"
    var property position

    method esSolido() { return true}

    method esBomba() { return false }

    method matar() {
        // No hace nada, el muro no puede ser destruido
    }

 }