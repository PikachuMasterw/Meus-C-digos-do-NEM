programa {
  funcao inicio() {
    cadeia nome, texto
    real martelo, parafuso, cf, lampada, valormartelo, valorparafuso, valorcf, valorlampada, valorfinal
    real gastoFinal
    real gastoMartelo, gastoParafuso, gastoCF, gastoLampada
    inteiro qtdMartelo, qtdParafuso, qtdCF, qtdLampada
    
    escreva("Qual o seu nome? ")
    leia(nome)

    texto = "R$"
    valormartelo = 15.90
    valorparafuso = 0.70
    valorcf = 4.99
    valorlampada = 14.90

    escreva("\nMartelo: ", texto, valormartelo)
    escreva("\nParafuso: ", texto, valorparafuso)
    escreva("\nChave de Fenda: ", texto, valorcf)
    escreva("\nLâmpada: ", texto, valorlampada)

    escreva("\n\nQuantos martelos você vai querer? ")
    leia(qtdMartelo)

    escreva("\nQuantos parafusos você vai querer? ")
    leia(qtdParafuso)

    escreva("\nQuantas chaves de fenda você vai querer? ")
    leia(qtdCF)

    escreva("\nQuantas lâmpadas você vai querer? ")
    leia(qtdLampada)

    gastoMartelo = qtdMartelo * valormartelo
    gastoParafuso = qtdParafuso * valorparafuso
    gastoCF = qtdCF * valorcf
    gastoLampada = qtdLampada * valorlampada

    gastoFinal = gastoMartelo + gastoParafuso + gastoCF + gastoLampada
    escreva("\n___________________________")
    escreva("\nNOTA DE PAGAMENTO")
    escreva("\n\nNome do Cliente: ", nome)
    escreva("\n\n(Martelo) Qtd ", qtdMartelo, " * ", valormartelo, " = ", gastoMartelo)
    escreva("\n(Parafuso) Qtd ", qtdParafuso, " * ", valorparafuso, " = ", gastoParafuso)
    escreva("\n(Chave de Fenda) Qtd ", qtdCF, " * ", valorcf, " = ", gastoCF)
    escreva("\n(Lâmpada) Qtd ", qtdLampada, " * ", valorlampada, " = ", gastoLampada)
    escreva("\nGasto total: ", gastoFinal)
    escreva("\n____________________________")
  }
}
