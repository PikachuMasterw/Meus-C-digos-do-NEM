programa {
  funcao inicio() {
    inteiro qtdEleitores, voto, totalVotoCandidatoA = 0, totalVotoCandidatoB = 0, totalVotoCandidatoC = 0, totalVotoCandidatoD = 0, a, b, c, d

    escreva("Sistema de votação!")
    escreva("\nQuantas pessoas votam nessa seção? ") leia(qtdEleitores)
    
    escreva("\nInformações dos candidatos!")
    escreva("\nCandidato A - Vote número 10!")
    escreva("\nCandidato B - Vote número 20!")
    escreva("\nCandidato C - Vote número 30!")
    escreva("\nCandidato D - Vote número 40!")

    para(inteiro cont = 1; cont <= qtdEleitores; cont++){
      escreva("\nEm quem você irá votar? Vote em um dos números: 10, 20, 30, 40!") 
      escreva("\n")
      escreva("\nDigite seu voto: ")leia(voto)

      se(voto == 10)
      totalVotoCandidatoA = totalVotoCandidatoA + 1
      se(voto == 20)
      totalVotoCandidatoB = totalVotoCandidatoB + 1
      se(voto == 30)
      totalVotoCandidatoC = totalVotoCandidatoC + 1
      se(voto == 40)
      totalVotoCandidatoD = totalVotoCandidatoD + 1
    }
    escreva("\nResumo dos votos!")
    escreva("\nO candidato A recebeu ",totalVotoCandidatoA," voto(s)")
    escreva("\nO candidato B recebeu ",totalVotoCandidatoB," voto(s)")
    escreva("\nO candidato C recebeu ",totalVotoCandidatoC," voto(s)")
    escreva("\nO candidato D recebeu ",totalVotoCandidatoD," voto(s)")

    escreva("\nResultado final!\n")
    a = totalVotoCandidatoA
    b = totalVotoCandidatoB
    c = totalVotoCandidatoC
    d = totalVotoCandidatoD

    se((a > b) e (a > c) e (a > d)){
     escreva("O candidato A venceu!\n")
     se((b > c) e (b > d))
      escreva("O candidato B ficou em segundo lugar!\n")
     senao{
      se(c > d)
       escreva("O candidato C ficou em segundo lugar!\n")
      senao
       escreva("O candidato D ficou em segundo lugar!\n")
    }

    senao
    se((b > a) e (b > c) e (b > d)){
     escreva("O candidato B venceu!\n")
     se((a > c) e (a > d))
      escreva("O candidato A ficou em segundo lugar!\n")
     senao{
      se(c > d)
       escreva("O candidato C ficou em segundo lugar!\n")
      senao
       escreva("O candidato D ficou em segundo lugar!\n")
    }
    senao
    se((c > a) e (c > b) e (c > d)){
     escreva("O candidato C venceu!\n")
     se((a > b) e (a > d))
      escreva("O candidato A ficou em segundo lugar!\n")
     senao{
      se(b > d)
       escreva("O candidato B ficou em segundo lugar!\n")
      senao
       escreva("O candidato D ficou em segundo lugar!\n")
    }
    senao
    se((d > a) e (d > b) e (d > c)){
     escreva("O candidato D venceu!\n")
     se((b > a) e (b > c))
      escreva("O candidato B ficou em segundo lugar!\n")
     senao{
      se(a > c)
       escreva("O candidato A ficou em segundo lugar!\n")
      senao
       escreva("O candidato C ficou em segundo lugar!\n")
    }
  }




}
