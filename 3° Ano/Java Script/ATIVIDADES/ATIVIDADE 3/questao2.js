function buscarProd(produtos, pesquisa){
    for(let i = 0;i < produtos.length;i++){
        if(produtos[i].nome.toLowerCase() === pesquisa.toLowerCase()){
            return produtos[i]
        }
    }
    return "Produto não encontrado"
}
const catalogo = [
    {nome: "Celular", preco: 1500},
    {nome: "Notebook", preco: 3000},
    {nome: "Tablet", preco: 1200}
]
console.log(buscarProd(catalogo, "Notebook"))
console.log(buscarProd(catalogo, "TV"))
