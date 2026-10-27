import wollok.game.*

class Bolitas{
    var property position 

    method imagen() {
      "bolita.png"
    }

    method chocoConPacman() {
      game.removeVisual(self)
    }

    method esSolido() { return false}

    method matar()// No hace nada, las bolitas no puede ser destruidas

} 