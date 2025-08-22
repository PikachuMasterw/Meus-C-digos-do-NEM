let votos = [1, 2, 1, 3, 2, 1, 1, 4]
let candidato1 = 0 
let candidato2 = 0
let candidato3 = 0
let candidato4 = 0

for (let voto of votos){
    if(voto == 1) candidato1++
    if(voto == 2) candidato2++
    if(voto == 3) candidato3++
    if(voto == 4) candidato4++
}

console.log("Candidato 1: ", candidato1)
console.log("Candidato 2: ", candidato2)
console.log("Candidato 3: ", candidato3)
console.log("Candidato 4: ", candidato4)
