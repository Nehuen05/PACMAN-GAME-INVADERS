import wollok.game.*

class BombaRandom{
    
    var property position = game.origin()
    method image(){
        return "bombaRandom.png"
    }

    method generarBombaRandom() {
        game.addVisual("bombaAzulChica.png")
    }
}