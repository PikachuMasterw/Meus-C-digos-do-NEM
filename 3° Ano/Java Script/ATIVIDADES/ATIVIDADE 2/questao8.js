let medidas = [15.3, 18.1, 12.0, 20.5, 17.8]
let maior = medidas[0]
for(let i = 1; i < medidas.length; i++){
    if(medidas[i] > maior) maior = medidas[i]
}
console.log("O MAIOR NÚMERO DESSA POCILGA É", maior)
