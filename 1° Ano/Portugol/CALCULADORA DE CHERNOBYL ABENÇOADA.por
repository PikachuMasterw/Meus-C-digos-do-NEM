programa {
  inclua biblioteca Util
  funcao inicio() {
    real n1, n2, n3, n4, n5, nX, nTo

    escreva("BEM VINDO AO CALCULADOR DE M�DIAS DE CHERNOBYL")
    escreva("\nA NOTA TEM QUE SER NO M�XIMO 10 PONTOS!")
    escreva("\nDigite uma nota (1/4): ") leia(n1)
    escreva("Digite uma nota (2/4): ") leia(n2)
    escreva("Digite uma nota (3/4): ") leia(n3)
    escreva("Digite uma nota (4/4): ") leia(n4)

    nTo = (n1 + n2 + n3 + n4) / 4

    limpa()

    escreva("Digite o valor da sua vari�vel: ") leia(nX)
    
    limpa()
     
    escreva("processando informa��o") 
    Util.aguarde(1000)
    escreva(".")
    Util.aguarde(1000)
    escreva(".")
    Util.aguarde(1000)
    escreva(".")
    limpa()
    escreva("processando informa��o")
    Util.aguarde(1000)
    escreva(".")
    Util.aguarde(1000)
    escreva(".")
    Util.aguarde(1000)
    escreva(".")
    Util.aguarde(1000)
    limpa()

    se (nTo == nX)
    escreva("A SUA M�DIA ",nTo, " � IGUAL A VARI�VEL X = ", nX)

    se (nTo < nX)
    escreva("A SUA M�DIA ",nTo, " � MENOR DO QUE A VARI�VEL X = ", nX)

    se (nTo > nX)
    escreva("A SUA M�DIA ",nTo, " � MAIOR DO QUE A VARI�VEL X = ", nX)
  }
}
