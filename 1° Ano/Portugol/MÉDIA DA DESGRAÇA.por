programa {
  funcao inicio() {
  real num = 1, soma = 0, media
  inteiro qtdN = 0

  enquanto(num > 0){
   escreva("Digite um n°: ") leia(num)
   
   se(num > 0){
    soma = soma + num
    qtdN = qtdN + 1
   }
  }
  limpa()
  se(qtdN != 0){
    media = soma / qtdN
    escreva("\nA media dos n°s foi: ", media)
  }

  senao
  escreva("ERRO")
  }
}
