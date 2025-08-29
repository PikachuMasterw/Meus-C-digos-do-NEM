function convertTemp(temp, unid){
    if(unid === "C"){
        let resultado = (temp * 9/5) + 32;
        console.log(`${temp}°C = ${resultado}°F`);
        return resultado;
    }
    else if(unid === "F"){
        let resultado = (temp - 32) * 5/9;
        console.log(`${temp}°F = ${resultado}°C`);
        return resultado;
    }
    else{
        console.log("UNIDADE INVÁLIDA");
        return "UNIDADE INVÁLIDA";
    }
}

// Testes
console.log("Resultado:", convertTemp(40, "Piu"));  // Mostra erro
console.log("Resultado:", convertTemp(40, "C"));    // Mostra conversão
