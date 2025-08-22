programa {
  inclua biblioteca Util
  funcao inicio() {
   cadeia nome,
   real nota1, nota2, nota3, nota4, nota5, notaFinal

   escreva("Digite o seu nome: ") leia(nome)
   
   faca
   {
     escreva("Digite a primeira nota(Máximo 10): ") leia(nota1)
     escreva("Digite a segunda nota(Máximo 10): ") leia(nota2)
     escreva("Digite a terceira nota(Máximo 10): ") leia(nota3)
     escreva("Digite a quarta nota(Máximo 10): ") leia(nota4)
     escreva("Digite a quinta nota(Máximo 10): ") leia(nota5)
     escreva("\n")
    } enquanto ((nota1 > 10) ou (nota2 > 10) ou (nota3 > 10) ou (nota4 > 10) ou (nota5 > 10))
    
   limpa()

   Util.aguarde(1000)
   escreva("Carregando")
   Util.aguarde(1000)
   escreva(".")
   Util.aguarde(1000)
   escreva(".")
   Util.aguarde(1000)
   escreva(".")
   Util.aguarde(1000)

   limpa()
  
   notaFinal = nota1 + nota2 + nota3 + nota4 + nota5
   notaFinal = (notaFinal / 5)

   se (notaFinal >= 6)
   {
    escreva("Você passou com: ", notaFinal, " pontos")
   }
  }
}
