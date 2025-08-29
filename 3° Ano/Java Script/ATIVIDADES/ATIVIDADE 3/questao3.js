function dados(n){
    let result = []
    let i = 0

    while(i < n){
        result.push(Math.floor(Math.random() * 6) + 1)
        i++
    }
    return result
}
console.log(dados(10))
