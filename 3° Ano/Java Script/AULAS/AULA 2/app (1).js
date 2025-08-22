let tipoCliente = "Vip"

switch(tipoCliente){
    case "Vip":
        console.log("Esse é um cliente VIP, passagem liberada")
        break

    case "Especial":
        console.log("Esse é um cliente ESPECIAL, seu embarque está te aguardando")
        break

    case "Comum":
        console.log("Vai pro fim da fila!")
        break
    default:
        console.log("Embarque não autorizado")
}