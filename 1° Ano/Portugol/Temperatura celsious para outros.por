programa {
  funcao inicio() {
    real temperatura, celsius, fah, kelvin, somaK, somaFAH1, somaFAH2

    escreva("BEM VINDO AO CONVERSOR DE TEMPERATURAS!")
    escreva("\nDigite uma temperatura (em °C): ") leia(temperatura)

    somaK = 273.15
    somaFAH1 = 1.8
    somaFAH2 = 32

    celsius = temperatura
    fah = temperatura * somaFAH1 + somaFAH2
    kelvin = temperatura + somaK

    escreva("_____________________________________________________")

    escreva("\nRESULTADO")
    escreva("\n\n", temperatura, " Graus Celsius", "\n", fah, " Fahrenheit", "\n", kelvin, " Kelvin")
    escreva("\n_____________________________________________________")
  }
}
