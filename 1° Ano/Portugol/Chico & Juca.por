programa {
  inclua biblioteca Util --> U
  funcao inicio() {
  real chicoM = 1.50, jucaM = 1.10
  real chicoMais = 0.02, jucaMais = 0.03, ano = 2000, cnt = 1

  enquanto(jucaM < chicoM){
   chicoM = chicoM + chicoMais
   jucaM = jucaM + jucaMais
   ano = ano + 1
   cnt = cnt + 1

  limpa()
   escreva("\n---------------------------------------------\n")
   escreva("Ano: ", ano,"\n")
   escreva("Anos decorridos: ",cnt,"\n")
   escreva("Tamanho do Juca: ",jucaM,"\n")
   escreva("Tamanho do Chico: ", chicoM,"\n")
   escreva("---------------------------------------------\n")
   U.aguarde(200)
  }

  }
}
