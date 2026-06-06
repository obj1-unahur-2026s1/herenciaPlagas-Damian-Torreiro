import elementos.*
 
 class Plaga {
    var poblacion

    method nivelDeDaño()

    method transmiteEnfermedades() = poblacion >= 10 

    method atacar(unElemento){
        unElemento.recibirAtaque(self)
        poblacion = poblacion * 1.1
    }    
 }

 class Cucarachas inherits Plaga{
    var peso

    override method nivelDeDaño() = poblacion * 0.5

    override method transmiteEnfermedades() = super() && peso >= 10

    override method atacar(unElemento){
        super(unElemento)
        peso = peso + 2
    }
        
 }

 class Pulgas inherits Plaga{

    override method nivelDeDaño() = poblacion * 2

 }

 class Garrapatas inherits Pulgas{
    override method atacar(unElemento){
        unElemento.recibirAtaque(self)
        poblacion = poblacion * 1.2
        
    }
 }

 class Mosquitos inherits Plaga{
    override method nivelDeDaño() = poblacion

    override method transmiteEnfermedades() = super() && poblacion % 3 == 0    
 }