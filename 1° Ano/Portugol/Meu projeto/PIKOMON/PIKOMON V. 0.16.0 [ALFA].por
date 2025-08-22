programa {
  inclua biblioteca Util --> U
  inclua biblioteca Matematica --> Mat
  inclua biblioteca Texto --> Tex
  funcao inicio() {
    inteiro repetir = 0, pergunta = 0, tamanho = 0, numero = 0, turno = 0//repetir = loop
    real tela = 0, batalha = 0 //tela = as imagens que ele vai mostrar no programa
    cadeia comando //comandos que jogador ira fazer em jogo
    real vida1, vida2
    cadeia player1, player2, pk1, pk2, passaDialogo, resposta, texto, texto3 = ""
    caracter texto2
    inteiro vida1, ataque1, ataque2, ataque3, ataque4
    inteiro ivida1, iataque1, iataque2, iataque3, iataque4, ia
    cadeia ataqueNome1, ataqueNome2, ataqueNome3, ataqueNome4, iataqueNome1, iataqueNome2, iataqueNome3, iataqueNome4
    
    se(tela == 0){ //imagem1 de tela 
    limpa()
    escreva("              --PIKOMON--         \n")  
    escreva("                _______                         \n") 
    escreva("               |       |         1 -jogar        \n") 
    escreva("               |---O---|         2 -configurar   \n") 
    escreva("               |_______|                    \n")  
    escreva("                                         V.0.16.0[ALFA]         \n")
    escreva("                                 9 -sair         \n") 
    }
    
    senao{ //esse senao não é necessario para que funcione o programa, ele só serve para deixar o programa mais rapido ao verificar os comandos.
    se(tela == 1){ //imagem2 de tela
    limpa()
    escreva("       --CONFIGURAR--\n")  
    escreva("                                 \n") 
    escreva("                                 \n") 
    escreva("             NADA PRA VER AQUI!                    \n") 
    escreva("                                 \n")  
    escreva("                                 \n")
    escreva("                 0 -voltar       \n")  
    }
    
    senao{ //esse senao não é necessario para que funcione o programa, ele só serve para deixar o programa mais rapido ao verificar os comandos.
    se(tela == 2){ //imagem3 de tela
    limpa()
    escreva("                --JOGO--\n")  
    escreva("                                            \n") 
    escreva("                                4 -Novo jogo       \n") 
    escreva("                                       \n") 
    escreva("                                            \n")  
    escreva("                                            \n")
    escreva("                                 0 -voltar       \n")  
    }
    }
    }
    
    
    se((comando == "Novo jogo") ou (comando == "4")e (tela == 2)){
      tela = 3
    }
    
    senao{
      se(tela == 3){
      limpa()
      
      para(inteiro numeroAleatorio = 1; numeroAleatorio < 101; numeroAleatorio = numeroAleatorio + 1){
        escreva(numeroAleatorio,"/100%\n")
        U.aguarde(50)
        limpa()
        }

      limpa()
      tela = 3
      limpa()
      escreva(" ")
      escreva(" ")
      escreva("??- Olá treinador!                              ")
      escreva(" ")
      escreva(" ")
      leia(passaDialogo)
      limpa()
      escreva(" ")
      escreva(" ")
      escreva("Prof. Palmeira- Me chame de Professor Palmeira!")
      escreva(" ")
      escreva(" ")
      leia(passaDialogo)
      limpa()
      escreva(" ")
      escreva(" ")
      escreva("Prof. Palmeira- Eu sou um pesquisador de pikomons e explorei todo o mundo!")
      escreva(" ")
      escreva(" ")
      leia(passaDialogo)
      limpa()
      escreva(" ")
      escreva(" ")
      escreva("Prof. Palmeira- Então... Eu esqueci o seu nome... Qual é o seu nome? (DIGITE O SEU NOME): ") leia(player1) 
      escreva("Ah sim! seu nome é ", player1, "!")
      escreva(" ")
      leia(passaDialogo)
      limpa()
      escreva(" ")
      escreva(" ")
      escreva("Prof. Palmeira- Você tem um amigo que conhece desde a sua infância, e ele é o meu neto!")
      escreva(" Mas... Também esqueci o nome dele...")
      escreva(" ")
      leia(passaDialogo)
      limpa()
      escreva(" ")
      escreva(" ")
      escreva("??- VÔ!")
      escreva(" ")
      escreva(" ")
      leia(passaDialogo)
      limpa()
      escreva(" ")
      escreva(" ")
      escreva("Prof. Palmeira- Então ", player1, " , qual o nome do seu amigo? (DIGITE O NOME DELE): ") leia(player2)
      escreva(" ")
      escreva(" ")
      U.aguarde(1000)
      limpa()
      escreva(" ")
      escreva(" ")
      escreva("Prof. Palmeira- AH sim! O nome dele é ", player2, "!")
      escreva(" ")
      escreva(" ")
      leia(passaDialogo)
      tela = 4
      enquanto(tela == 4){
      limpa()
      escreva("                                                            \n")  
      escreva("       _______         _______         _______              \n") 
      escreva("      |       |       |       |       |       |             \n") 
      escreva("      |---O---|       |---O---|       |---O---|             \n") 
      escreva("      |_______|       |_______|       |_______|             \n")  
      escreva("   1- Charmander     2- Squirtle   3- Bulbassauro           \n")
      escreva("                                                            \n")
      leia(comando)
      
     
     
     se((comando == "Charmander") ou (comando == "1") e (tela == 4)){
      pk1 = "Charmander"
      pk2 = "Squirtle"
       tela = 4.1
     }

     se((comando == "Squirtle") ou (comando == "2") e (tela == 4)){
      pk1 = "Squirtle"
      pk2 = "Bulbassauro"
       tela = 4.1
     }
    
     se((comando == "Bulbassauro") ou (comando == "3") e (tela == 4)){
      pk1 = "Bulbassauro"
      pk2 = "Charmander"
       tela = 4.1
     }

     limpa()
     escreva(" ")
     escreva(" ")
     escreva("Prof. Palmeira- Bom, o seu primero pokemon vai ser o ", pk1, " e o meu neto escolheu o ", pk2, "!")
     escreva(" ")
     escreva(" ")
     leia(passaDialogo)
     escreva(" ")
     escreva(" ")
     escreva(player2, "- Agora que nós dois temos pikomons, VAMOS FAZER UMA BATALHA PIKOMON!")
     escreva(" ")
     escreva(" ")
     U.aguarde(3000)

     
     //----------------------------------------------------------------------//
     se(pk1 == "Charmander"){
      vida1 = 84
      ataque1 = 19 //BRASAS
      ataqueNome1 = "BRASAS"
      ataque2 = 17 //ARRANHAR
      ataqueNome2 = "ARRANHAR"
      ataque3 = 0 //GRITAR
      ataqueNome3 = "GRITAR"
      ataque4 = 0 //CORTINA DE FUMAÇA
      ataqueNome4 = "CORTINA DE FUMAÇA"
     }

     se(pk1 == "Squirtle"){
      vida1 = 87
      ataque1 = 13 //GIRO RÁPIDO
      ataqueNome1 = "GIRO RÁPIDO"
      ataque2 = 0 //CHICOTE DE CAUDA
      ataqueNome2 = "CHICOTE DE CAUDA"
      ataque3 = 20 //ARMA DE ÁGUA
      ataqueNome3 = "ARMA DE ÁGUA"
      ataque4 = 17 //INVESTIDA
      ataqueNome4 = "INVESTIDA"
     }

     se(pk1 == "Bulbassauro"){
      vida1 = 90
      ataque1 = 18 //INVESTIDA
      ataqueNome1 = "INVESTIDA"
      ataque2 = 19 //CHICOTE DE VINHA
      ataqueNome2 = "CHICOTE DE VINHA"
      ataque3 = 0 //GRITO
      ataqueNome3 = "GRITO"
      ataque4 = 0 //SEMENTE SANGUE-SUGA
      ataqueNome4 = "SEMENTE SANGUE-SUGA"
     }
     
     //----------------------------------------------------------------------//

     se(pk2 == "Charmander"){
      ivida1 = 84
      iataque1 = 19 //BRASAS
      iataqueNome1 = "BRASAS"
      iataque2 = 17 //ARRANHAR
      iataqueNome2 = "ARRANHAR"
      iataque3 = 0 //GRITAR
      iataqueNome3 = "GRITAR"
      iataque4 = 0 //CORTINA DE FUMAÇA
      iataqueNome4 = "CORTINA DE FUMAÇA"
     }

     se(pk2 == "Squirtle"){
      ivida1 = 87
      iataque1 = 13 //GIRO RÁPIDO
      iataqueNome1 = "GIRO RÁPIDO"
      iataque2 = 0 //CHICOTE DE CAUDA
      iataqueNome2 = "CHICOTE DE CAUDA"
      iataque3 = 20 //ARMA DE ÁGUA
      iataqueNome3 = "ARMA DE ÁGUA"
      iataque4 = 17 //INVESTIDA
      iataqueNome4 = "INVESTIDA"
     }

     se(pk2 == "Bulbassauro"){
      ivida1 = 90
      iataque1 = 18 //INVESTIDA
      iataqueNome1 = "INVESTIDA"
      iataque2 = 19 //CHICOTE DE VINHA
      iataqueNome2 = "CHICOTE DE VINHA"
      iataque3 = 0 //GRITO
      iataqueNome3 = "GRITO"
      iataque4 = 0 //SEMENTE SANGUE-SUGA
      iataqueNome4 = "SEMENTE SANGUE-SUGA"
     }

     limpa()
     enquanto(batalha == 0){
     escreva("Prosseguir? \nSim ou Não? (DIGITE A SUA RESPOSTA): ") leia(resposta)
     se((resposta == "Sim") e (tela == 3)){
      tela = 0.5
      batalha = 1
     }

     se((resposta == "Não") e (tela == 3)){
      repetir = 1
      }
     }

    
     
     senao{ //esse senao não é necessario para que funcione o programa, ele só serve para deixar o programa mais rapido ao verificar os comandos.
     se(tela == 0.5){ //imagem3 de tela
     
     limpa()
     escreva("\n                                              ")
     escreva("\n                        __________   _______  ")
     escreva("\n                       |          | |       | ")
     escreva("\n                       |    ",ivida1,"    | |---O---| ")
     escreva("\n                       |__________| |_______| ")
     escreva("\n                                  ", pk2, "   ")
     escreva("\n                                              ")
     escreva("\n                                              ")
     escreva("\n                                              ")
     escreva("\n _______   _________                          ")
     escreva("\n|       | |         |                         ")
     escreva("\n|---O---| |   ",vida1,"    |                  ")
     escreva("\n|_______| |_________|                         ")
     escreva("\n", pk1,"                                      ")
     escreva("\n _________________________________________    ")
     escreva("\n|                 |1-Jogar      /3- Bolsa |   ")
     escreva("\n|                 |            /          |   ")
     escreva("\n|                 |2- Pikomons/  4- Sair  |   ")
     escreva("\n|_________________|__________/____________|   ")
     escreva("\nO QUE VOCÊ VAI FAZER? ") 
     }
     se(tela == 5 ){ //imagem3 de tela
     
     limpa()
     escreva("\n                                              ")
     escreva("\n                        __________   _______  ")
     escreva("\n                       |          | |       | ")
     escreva("\n                       |    ",ivida1,"    | |---O---| ")
     escreva("\n                       |__________| |_______| ")
     escreva("\n                                  ", pk2, "   ")
     escreva("\n                                              ")
     escreva("\n                                              ")
     escreva("\n                                              ")
     escreva("\n _______   _________                          ")
     escreva("\n|       | |         |                         ")
     escreva("\n|---O---| |   ",vida1,"    |                  ")
     escreva("\n|_______| |_________|                         ")
     escreva("\n", pk1,"                                      ")
     escreva("\n _________________________________________    ")
     escreva("\n| 1-", ataqueNome1, "                     |       ")
     escreva("\n| 2-", ataqueNome2, "                     |       ")
     escreva("\n| 3-", ataqueNome3, "                     |       ")
     escreva("\n| 4-", ataqueNome4, "                     |       ")
     escreva("\n|_________________________________________|    ")
     escreva("\nO QUE VOCÊ VAI FAZER? ")
     }
     se(tela == 5.1){ //ataque1
      limpa()
     escreva("\n                                              ")
     escreva("\n                        __________   _______  ")
     escreva("\n                       |          | |       | ")
     escreva("\n                       |    ",ivida1,"    | |---O---| ")
     escreva("\n                       |__________| |_______| ")
     escreva("\n                                  ", pk2, "   ")
     escreva("\n                                              ")
     escreva("\n                                              ")
     escreva("\n                                              ")
     escreva("\n _______   _________                          ")
     escreva("\n|       | |         |                         ")
     escreva("\n|---O---| |   ",vida1,"    |                  ")
     escreva("\n|_______| |_________|                         ")
     escreva("\n", pk1,"                                      ")
     escreva("\n _________________________________________    ")
     escreva("\n| ", pk1, " usou ",ataqueNome1, "         |    ")
     escreva("\n|                                         |    ")
     escreva("\n|                                         |    ")
     escreva("\n|                                         |    ")
     escreva("\n|_________________________________________|    ")
      ivida1 = ivida1 - ataque1
      turno = 1
     }
     se(tela == 5.2 ){//ataque2
      limpa()
     escreva("\n                                              ")
     escreva("\n                        __________   _______  ")
     escreva("\n                       |          | |       | ")
     escreva("\n                       |    ",ivida1,"    | |---O---| ")
     escreva("\n                       |__________| |_______| ")
     escreva("\n                                  ", pk2, "   ")
     escreva("\n                                              ")
     escreva("\n                                              ")
     escreva("\n                                              ")
     escreva("\n _______   _________                          ")
     escreva("\n|       | |         |                         ")
     escreva("\n|---O---| |   ",vida1,"    |                  ")
     escreva("\n|_______| |_________|                         ")
     escreva("\n", pk1,"                                      ")
     escreva("\n _________________________________________    ")
     escreva("\n| ", pk1, " usou ",ataqueNome2, "         |    ")
     escreva("\n|                                         |    ")
     escreva("\n|                                         |    ")
     escreva("\n|                                         |    ")
     escreva("\n|_________________________________________|    ")
      ivida1 = ivida1 - ataque2
      turno = 1
     }

     se(tela == 5.3){//ataque3
      limpa()
     escreva("\n                                              ")
     escreva("\n                        __________   _______  ")
     escreva("\n                       |          | |       | ")
     escreva("\n                       |    ",ivida1,"    | |---O---| ")
     escreva("\n                       |__________| |_______| ")
     escreva("\n                                  ", pk2, "   ")
     escreva("\n                                              ")
     escreva("\n                                              ")
     escreva("\n                                              ")
     escreva("\n _______   _________                          ")
     escreva("\n|       | |         |                         ")
     escreva("\n|---O---| |   ",vida1,"    |                  ")
     escreva("\n|_______| |_________|                         ")
     escreva("\n", pk1,"                                      ")
     escreva("\n _________________________________________    ")
     escreva("\n| ", pk1, " usou ",ataqueNome3, "         |    ")
     escreva("\n|                                         |    ")
     escreva("\n|                                         |    ")
     escreva("\n|                                         |    ")
     escreva("\n|_________________________________________|    ")
      ivida1 = ivida1 - ataque3
      turno = 1
     }

     se(tela == 5.4){//ataque4
      limpa()
     escreva("\n                                              ")
     escreva("\n                        __________   _______  ")
     escreva("\n                       |          | |       | ")
     escreva("\n                       |    ",ivida1,"    | |---O---| ")
     escreva("\n                       |__________| |_______| ")
     escreva("\n                                  ", pk2, "   ")
     escreva("\n                                              ")
     escreva("\n                                              ")
     escreva("\n                                              ")
     escreva("\n _______   _________                          ")
     escreva("\n|       | |         |                         ")
     escreva("\n|---O---| |   ",vida1,"    |                  ")
     escreva("\n|_______| |_________|                         ")
     escreva("\n", pk1,"                                      ")
     escreva("\n _________________________________________    ")
     escreva("\n| ", pk1, " usou ",ataqueNome4, "         |    ")
     escreva("\n|                                         |    ")
     escreva("\n|                                         |    ")
     escreva("\n|                                         |    ")
     escreva("\n|_________________________________________|    ")
      ivida1 = ivida1 - ataque4
      turno = 1
     }
     se(tela == 5.5){ //imagem4 de tela

     limpa()
     escreva("\n                                              ")
     escreva("\n                        __________   _______  ")
     escreva("\n                       |          | |       | ")
     escreva("\n                       |    ",ivida1,"    | |---O---| ")
     escreva("\n                       |__________| |_______| ")
     escreva("\n                                  ", pk2, "   ")
     escreva("\n                                              ")
     escreva("\n                                              ")
     escreva("\n                                              ")
     escreva("\n _______   _________                          ")
     escreva("\n|       | |         |                         ")
     escreva("\n|---O---| |   ",vida1,"    |                  ")
     escreva("\n|_______| |_________|                         ")
     escreva("\n", pk1,"                                      ")
     escreva("\n _________________________________________    ")
     escreva("\n|                                         |   ")
     escreva("\n|  VOCÊ NÃO TEM PIKOMONS RESERVA!         |   ")
     escreva("\n|                                         |   ")
     escreva("\n|_________________________________________|   ")
     tela = 2
     }
     se(tela == 6){ //imagem4 de tela

     limpa()
     escreva("\n                                              ")
     escreva("\n                        __________   _______  ")
     escreva("\n                       |          | |       | ")
     escreva("\n                       |    ",ivida1,"    | |---O---| ")
     escreva("\n                       |__________| |_______| ")
     escreva("\n                                  ", pk2, "   ")
     escreva("\n                                              ")
     escreva("\n                                              ")
     escreva("\n                                              ")
     escreva("\n _______   _________                          ")
     escreva("\n|       | |         |                         ")
     escreva("\n|---O---| |   ",vida1,"    |                  ")
     escreva("\n|_______| |_________|                         ")
     escreva("\n", pk1,"                                      ")
     escreva("\n _________________________________________    ")
     escreva("\n|                                         |   ")
     escreva("\n|  VOCÊ FUGIU DA BATALHA!                 |   ")
     escreva("\n|                                         |   ")
     escreva("\n|_________________________________________|   ")
     tela = 2
     batalha = 0
     repetir = 1
     }
     }
     senao{
      se(tela == 6.1){ //imagem4 de tela

     limpa()
     escreva("\n                                              ")
     escreva("\n                        __________   _______  ")
     escreva("\n                       |          | |       | ")
     escreva("\n                       |    ",ivida1,"    | |---O---| ")
     escreva("\n                       |__________| |_______| ")
     escreva("\n                                  ", pk2, "   ")
     escreva("\n                                              ")
     escreva("\n                                              ")
     escreva("\n                                              ")
     escreva("\n _______   _________                          ")
     escreva("\n|       | |         |                         ")
     escreva("\n|---O---| |   ",vida1,"    |                  ")
     escreva("\n|_______| |_________|                         ")
     escreva("\n", pk1,"                                      ")
     escreva("\n _________________________________________    ")
     escreva("\n|                                         |   ")
     escreva("\n|  ", pk2, " usou ",iataqueNome1, "       |   ")
     escreva("\n|                                         |   ")
     escreva("\n|_________________________________________|   ")
     tela = 2
     turno = 0
      vida1 = vida1 - iataque1
     }
      se(tela == 6.2){ //imagem4 de tela

     limpa()
     escreva("\n                                              ")
     escreva("\n                        __________   _______  ")
     escreva("\n                       |          | |       | ")
     escreva("\n                       |    ",ivida1,"    | |---O---| ")
     escreva("\n                       |__________| |_______| ")
     escreva("\n                                  ", pk2, "   ")
     escreva("\n                                              ")
     escreva("\n                                              ")
     escreva("\n                                              ")
     escreva("\n _______   _________                          ")
     escreva("\n|       | |         |                         ")
     escreva("\n|---O---| |   ",vida1,"    |                  ")
     escreva("\n|_______| |_________|                         ")
     escreva("\n", pk1,"                                      ")
     escreva("\n _________________________________________    ")
     escreva("\n|                                         |   ")
     escreva("\n|  ", pk2, " usou ",iataqueNome2, "       |   ")
     escreva("\n|                                         |   ")
     escreva("\n|_________________________________________|   ")
     tela = 2
     turno = 0
      vida1 = vida1 - iataque2
     }
      se(tela == 6.3){ //imagem4 de tela

     limpa()
     escreva("\n                                              ")
     escreva("\n                        __________   _______  ")
     escreva("\n                       |          | |       | ")
     escreva("\n                       |    ",ivida1,"    | |---O---| ")
     escreva("\n                       |__________| |_______| ")
     escreva("\n                                  ", pk2, "   ")
     escreva("\n                                              ")
     escreva("\n                                              ")
     escreva("\n                                              ")
     escreva("\n _______   _________                          ")
     escreva("\n|       | |         |                         ")
     escreva("\n|---O---| |   ",vida1,"    |                  ")
     escreva("\n|_______| |_________|                         ")
     escreva("\n", pk1,"                                      ")
     escreva("\n _________________________________________    ")
     escreva("\n|                                         |   ")
     escreva("\n|  ", pk2, " usou ",iataqueNome3, "       |   ")
     escreva("\n|                                         |   ")
     escreva("\n|_________________________________________|   ")
     tela = 2
     turno = 0
      vida1 = vida1 - iataque3
     }
      se(tela == 6.4){ //imagem4 de tela

     limpa()
     escreva("\n                                              ")
     escreva("\n                        __________   _______  ")
     escreva("\n                       |          | |       | ")
     escreva("\n                       |    ",ivida1,"    | |---O---| ")
     escreva("\n                       |__________| |_______| ")
     escreva("\n                                  ", pk2, "   ")
     escreva("\n                                              ")
     escreva("\n                                              ")
     escreva("\n                                              ")
     escreva("\n _______   _________                          ")
     escreva("\n|       | |         |                         ")
     escreva("\n|---O---| |   ",vida1,"    |                  ")
     escreva("\n|_______| |_________|                         ")
     escreva("\n", pk1,"                                      ")
     escreva("\n _________________________________________    ")
     escreva("\n|                                         |   ")
     escreva("\n|  ", pk2, " usou ",iataqueNome4, "       |   ")
     escreva("\n|                                         |   ")
     escreva("\n|_________________________________________|   ")
     tela = 2
     turno = 0
      vida1 = vida1 - iataque4
     }
     }
     se(ivida1 < 1){ //imagem4 de tela
    ivida1 = 0
     limpa()
     escreva("\n                                              ")
     escreva("\n                        __________   _______  ")
     escreva("\n                       |          | |       | ")
     escreva("\n                       |    ",ivida1,"    | |---O---| ")
     escreva("\n                       |__________| |_______| ")
     escreva("\n                                  ", pk2, "   ")
     escreva("\n                                              ")
     escreva("\n                                              ")
     escreva("\n                                              ")
     escreva("\n _______   _________                          ")
     escreva("\n|       | |         |                         ")
     escreva("\n|---O---| |   ",vida1,"    |                  ")
     escreva("\n|_______| |_________|                         ")
     escreva("\n", pk1,"                                      ")
     escreva("\n _________________________________________    ")
     escreva("\n|                                         |   ")
     escreva("\n|  ", pk1, " ganhou!!!                    |   ")
     escreva("\n|                                         |   ")
     escreva("\n|_________________________________________|   ")
     batalha = 0
     tela = 7
     repetir = 1
     comando = ""
     }
     se(vida1 < 1){ //imagem4 de tela
    vida1 = 0
     limpa()
     escreva("\n                                              ")
     escreva("\n                        __________   _______  ")
     escreva("\n                       |          | |       | ")
     escreva("\n                       |    ",ivida1,"    | |---O---| ")
     escreva("\n                       |__________| |_______| ")
     escreva("\n                                  ", pk2, "   ")
     escreva("\n                                              ")
     escreva("\n                                              ")
     escreva("\n                                              ")
     escreva("\n _______   _________                          ")
     escreva("\n|       | |         |                         ")
     escreva("\n|---O---| |   ",vida1,"    |                  ")
     escreva("\n|_______| |_________|                         ")
     escreva("\n", pk1,"                                      ")
     escreva("\n _________________________________________    ")
     escreva("\n|                                         |   ")
     escreva("\n|  ", pk2, " ganhou!!!                    |   ")
     escreva("\n|                                         |   ")
     escreva("\n|_________________________________________|   ")
     batalha = 0
     repetir = 1
     comando = ""
     }
     leia(comando)

     se((comando == "1") e (tela == 0.5)){
     tela = 5
     comando = ""
     }

     se((comando == "2") e (tela == 0.5)){
      tela = 4
      comando = ""
     }

     se((comando == "voltar") ou (comando == "0")){
      tela = 2
      comando = ""
    }

    se((comando == "4") e (tela == 2)){
      tela = 5
      comando = ""
     }

    se(turno == 0){
     se((comando == "1") e (tela == 3)){
      tela = 3.1
      comando = ""
      
     }

     se((comando == "2") e (tela == 3)){
      tela = 3.2
      comando = ""
      
     }

     se((comando == "3") e (tela == 3)){
      tela = 3.3
      comando = ""
      
     }

     se((comando == "4") e (tela == 3)){
      tela = 3.4
      comando = ""
      
     }
     }

     senao{
      ia = U.sorteia(1,4)
     se(ia == 1){
      tela = 5.1
      }

      se(ia == 2){
      tela = 5.2
      }

      se(ia == 3){
      tela = 5.3
      }

      se(ia == 4){
      tela = 5.4
      }

     } 
       
     
  }
  limpa()
      escreva("\n             ----CREDITOS----                ")
     escreva("\n                        __________   _______  ")
     escreva("\n                       |          | |       | ")
     escreva("\n                       |          | |---O---| ")
     escreva("\n                       |__________| |_______| ")
     escreva("\n                                  ", pk2, "   ")
     escreva("\n                                              ")
     escreva("\n                                              ")
     escreva("\n                                              ")
     escreva("\n _______   _________                          ")
     escreva("\n|       | |         |                         ")
     escreva("\n|---O---| |         |                         ")
     escreva("\n|_______| |_________|                         ")
     escreva("\n                                              ")
     escreva("\n _________________________________________    ")
     escreva("\n| programadores: GK, PKMW                 |   ")
     escreva("\n| ideia: PKMW                             |   ")
     escreva("\n| apoio emocional: caio bruno             |   ")
     escreva("\n| Designer: PKMW                          |   ")
     escreva("\n|_________________________________________|   ")
     //----------------------------------------------------------------------//
     }

    leia(comando) //para ele modificar a variavel comando em jogo
    se((comando == "jogar") ou (comando == "1") e (tela == 0)){
      tela = 2
    }

    se((comando == "configurar") ou (comando == "2") e (tela == 0)){
      tela = 1 
    }

    se((comando == "sair") ou (comando == "9") e (tela == 0)){
      repetir = 1 //desligar loop
    }
    
    se((comando == "voltar") ou (comando == "0") e (tela != 0)){
      tela = 0
    }
    
    }

    
  }
  
  

  }
}
