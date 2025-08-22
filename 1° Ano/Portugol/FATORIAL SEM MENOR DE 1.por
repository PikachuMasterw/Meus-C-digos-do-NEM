programa {
  funcao inicio() {
     real num, fat = 1
    
    escreva("Digite um número: ") leia(num)

    enquanto(num >= 1){
     para(inteiro cont = 1; cont <= num; cont++){
       fat = cont * fat
     }
       escreva(num,"! = ",fat,"\n")
       fat = 1
       escreva("Digite um número: ") leia(num)
    }
  }
}
