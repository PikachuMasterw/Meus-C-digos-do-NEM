let produtos = ["Caipivodka", "Tequila de Morango", "Suquinho do Amor", "Churume", "Suplementação da Cama", "Derruba Cavalo", "Para Coração"]
let pesquisa = "Batata"
let encontra = false
for(let i = 0; i < produtos.length;i++){
    if(pesquisa === produtos[i]){
        encontra = true
    }
}
console.log(`O produto "${pesquisa}" ${encontra ? "está em nosso estoque" : "não está em nosso estoque"}` )
