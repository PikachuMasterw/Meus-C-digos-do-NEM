// 6)
// Contexto: Um sistema de notas escolares precisa calcular a média de um aluno.
// Exercício: Crie uma função chamada calcularMedia que receba um array de
// números notas. A função deve calcular a média aritmética das notas e retornar o
// valor. Teste com um array de notas [7.5, 8.0, 6.0, 9.0].
function mediaNotas(notas){
    let soma = 0
    notas.forEach(nota => {
        soma+=nota
    })
    console.log(soma)
    let media = soma / notas.length
    console.log(media)
}
notas = [7.5, 8.0, 6.0, 9.0]
mediaNotas(notas)