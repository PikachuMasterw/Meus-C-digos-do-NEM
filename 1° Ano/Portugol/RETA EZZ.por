programa {
  funcao inicio() {
    real num, int1, int2

    escreva("DIGITE UM N�MERO: ") leia(num)

    escreva("DIGITE OS INTERVALOS:")
    escreva("\n1/2 { ") leia(int1) 
    escreva("\n2/2 { ") leia(int2) 

    limpa()

    se ((num > int1) e (num < int2))
    escreva("O N�MERO ", num, " EST� INCLUSO")

     senao
     escreva("SEU N�MERO ",num, " N�O EST� INCLUSO :(")
  }
}
