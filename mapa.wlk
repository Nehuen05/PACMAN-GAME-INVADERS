import muro.*
import wollok.game.*
import pacman.*
import bombasRandom.*
import spawners.*

object generadorMapa {
  var property diseño = [
    "####################",
    "#                  #",
    "# ####   ##   #### #",
    "# ####   ##   #### #",
    "#                  #",
    "#    ##########    #",
    "#    ##########    #",
    "##      ####      ##",
    "##      ####      ##",
    "#    ##      ##    #",
    "#    ##########    #",
    "#    ##########    #",
    "#                  #",
    "# ####   ##   #### #",
    "# ####   ##   #### #",
    "#   ##        ##   #",
    "##  ## ########## ##",
    "#                  #",
    "#                  #",
    "####################"
  ]

  method crear() {
    (0 .. 19).forEach{ y =>
      (0 .. 19).forEach{ x =>
        const caracter = diseño.get(19 - y).charAt(x)
        if (caracter == "#") {
          game.addVisual(new Muro(position = game.at(x, y)))
        }
      }
    }
    
  }
}