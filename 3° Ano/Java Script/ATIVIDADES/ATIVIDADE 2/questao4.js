let livros = ["O Alquimista", "Diário de um Mago", "O Pequeno Príncipe", "Leviatã", "Alcorão", "Peitos: Manual da Proprietária"]

livros.push("Revolução do Bichos")
livros.splice(1, 1)

let posicao = livros.indexOf("Leviatã")
console.log("Posição: ", posicao)

console.log("Livros atualizados: ", livros)
