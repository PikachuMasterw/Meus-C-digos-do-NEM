programa {
  inclua biblioteca Matematica --> mat
  funcao inicio() {
    cadeia nome
    real notadaprova, participacao, notaporva2, notafinal, trabalho
    escreva("digite seu nome:") leia(nome)
    escreva("digite nota do teste:") leia(notaporva2)
      escreva("digite nota de trabalho:") leia(trabalho)
        escreva("digite nota de participação:") leia(participacao)
          escreva("digite nota da prova:") leia(notadaprova)
          notafinal = (notadaprova + notaporva2 + participacao + trabalho) / 2

          se (notafinal >= 60)
          {
escreva("voce passou de ano \n ficou com:", notafinal, " Pontos")
 }
              se (notafinal < 60)
          {
escreva("voce nao passou de ano ):\n ficou com: ", notafinal, " Pontos")
}
  }
}
