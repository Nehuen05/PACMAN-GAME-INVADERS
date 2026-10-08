import pacman.*
import wollok.game.*


object muerte {

    method sonidoMuerte(){
        game.sound("pacman-muerte.mp3").play()
    }
}