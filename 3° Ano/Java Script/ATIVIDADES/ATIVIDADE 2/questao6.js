let numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

let numPares = [];

for (let num of numeros) {
    if (num % 2 === 0) {
        numPares.push(num);
    }
}

console.log("Números pares:", numPares);
