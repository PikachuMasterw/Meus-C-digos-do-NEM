programa {
  funcao inicio() {
    inteiro inic = 1
    inteiro result = 0
    inteiro fim, num
    inteiro cont

    escreva("Digite o número multiplicado: ") leia(fim)
    escreva("Digite o outro número: ") leia(num)
    limpa()

    para(cont = inic; cont <= fim; cont++){
     result = result + num

     limpa()

     escreva(num ," x ", fim ," = ", result)
    }
    
    
  }
}
