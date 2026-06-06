import plagas.*
class Hogar {
  var mugre 
  const confort  
  method esBueno() = 0.5 * confort >= mugre
  method recibirAtaque(plaga){
    mugre = mugre + plaga.nivelDeDaño()
  }
}

class Huerta {
  var produccion
  method esBueno() = produccion > nivelDeCosechas.valor()
  method recibirAtaque(plaga){
    produccion = produccion - 0.1 * plaga.nivelDeDaño() - (if (plaga.transmiteEnfermedades()) 10 else 0)
  }
}

object nivelDeCosechas {
  var property valor = 10 
}

class Mascota {
  var salud
  method esBueno() = salud > 250
  method recibirAtaque(plaga){
    salud = salud - if (plaga.transmiteEnfermedades()) plaga.nivelDeDaño() else 0
  }
}


class Barrio {
  const property elementos = []
   method esCopado() = self.cantElementosBuenos() > elementos.size() / 2

   method cantElementosBuenos() = elementos.count({c => c.esBueno()})
}

