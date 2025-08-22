// 5)
function converter(valor, taxa, moeda) {
    return moeda + " " + (valor / taxa).toFixed(2);
}
console.log(converter(100 , 5.2, "US$"));
