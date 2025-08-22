programa {
  inclua biblioteca Util --> U
  inclua biblioteca Matematica --> Mat
  inclua biblioteca Texto --> Tex
  funcao inicio() {
    inteiro repetir = 0//repetir = loop
    inteiro tela = 0 //tela = as imagens que ele vai mostrar no programa
    cadeia comando //comandos que jogador ira fazer em jogo
    enquanto(repetir == 0){ //looping semi-infinito
    real vida1, vida2
    cadeia player1, player2, pk1, pk2, passaDialogo, resposta
    inteiro vida1, ataque1, ataque2, ataque3, ataque4
    inteiro ivida1, iataque1, iataque2, iataque3, iataque4
    cadeia ataqueNome1, ataqueNome2, ataqueNome3, ataqueNome4, iataqueNome1, iataqueNome2, iataqueNome3, iataqueNome4
    
    se(tela == 0){ //imagem1 de tela 
    limpa()
    escreva("              --PIKOMON--         \n")  
    escreva("                _______                         \n") 
    escreva("               |       |         1 -jogar        \n") 
    escreva("               |---O---|         2 -configurar   \n") 
    escreva("               |_______|                    \n")  
    escreva("                                         V.0.16[ALFA]         \n")
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
      limpa()
      escreva(" ")
      escreva(" ")
      escreva("Prof. Palmeira- Bom, agora você vai escolher o seu primeiro pikomon!")
      escreva(" ")
      escreva(" ")
      leia(passaDialogo)
      limpa()
      escreva("                                                            \n")  
      escreva("       _______         _______         _______              \n") 
      escreva("      |       |       |       |       |       |             \n") 
      escreva("      |---O---|       |---O---|       |---O---|             \n") 
      escreva("      |_______|       |_______|       |_______|             \n")  
      escreva("   1- Charmander     2- Squirtle   3- Bulbassauro           \n")
      escreva("                                                            \n")
      leia(comando)
      tela = 3
     
     se((comando == "Charmander") ou (comando == "1") e (tela == 3)){
      pk1 = "Charmander"
      pk2 = "Squirtle"
     }

     se((comando == "Squirtle") ou (comando == "2") e (tela == 3)){
      pk1 = "Squirtle"
      pk2 = "Bulbassauro"
     }
    
     se((comando == "Bulbassauro") ou (comando == "3") e (tela == 3)){
      pk1 = "Bulbassauro"
      pk2 = "Charmander"
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
     escreva("Prosseguir? \nSim ou Não? (DIGITE A SUA RESPOSTA): ") leia(resposta)
     se((resposta == "Sim") e (tela == 3)){
      tela = 4
     }

     se((resposta == "Não") e (tela == 3)){
      repetir = 1
     }

    
     
     senao{ //esse senao não é necessario para que funcione o programa, ele só serve para deixar o programa mais rapido ao verificar os comandos.
     se(tela == 4){ //imagem3 de tela
     
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
     escreva("\nO QUE VOCÊ VAI FAZER? ") leia(comando)

     se((comando == "1") ou (comando == "Jogar") e (tela == 4)){
     tela = 4.1
     }

     se((comando == "2") ou (comando == "Pikomons") e (tela == 4)){
      tela = 4.2
     }

     se((comando == "3") ou (comando == "Bolsa") e (tela == 4)){
      tela = 4.3
     }

     se((comando == "4") ou (comando == "Sair") e (tela == 4)){
      repetir = 1
     }
     
     senao{ //esse senao não é necessario para que funcione o programa, ele só serve para deixar o programa mais rapido ao verificar os comandos.
     se(tela == 4.1){ //imagem3 de tela
     
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
     escreva("\n| 1-", ataqueNome1, "                            ")
     escreva("\n| 2-", ataqueNome2, "                            ")
     escreva("\n| 3-", ataqueNome3, "                            ")
     escreva("\n| 4-", ataqueNome4, "                            ")
     escreva("\n|_________________________________________    ")
     escreva("\nO QUE VOCÊ VAI FAZER? ") leia(comando)
     
     se((comando == "1") e (tela == 4.1)){
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
     escreva("\n| ", pk1, " usou ",ataqueNome1, "             ")
     escreva("\n|                                             ")
     escreva("\n|                                             ")
     escreva("\n|                                             ")
     escreva("\n|_________________________________________    ")
      U.aguarde(100)
      ivida1 = ivida1 - ataque1
      tela = 4
     }

     se((comando == "2") e (tela == 4.1)){
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
     escreva("\n| ", pk1, " usou ",ataqueNome2, "             ")
     escreva("\n|                                             ")
     escreva("\n|                                             ")
     escreva("\n|                                             ")
     escreva("\n|_________________________________________    ")
      U.aguarde(100)
      ivida1 = ivida1 - ataque2
      tela = 4
     }

     se((comando == "3") e (tela == 4.1)){
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
     escreva("\n| ", pk1, " usou ",ataqueNome3, "             ")
     escreva("\n|                                             ")
     escreva("\n|                                             ")
     escreva("\n|                                             ")
     escreva("\n|_________________________________________    ")
      U.aguarde(100)
      ivida1 = ivida1 - ataque3
      tela = 4
     }

     se((comando == "4") e (tela == 4.1)){
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
     escreva("\n| ", pk1, " usou ",ataqueNome4, "             ")
     escreva("\n|                                             ")
     escreva("\n|                                             ")
     escreva("\n|                                             ")
     escreva("\n|_________________________________________    ")
      U.aguarde(100)
      ivida1 = ivida1 - ataque4
      tela = 4
     }
     senao{ //esse senao não é necessario para que funcione o programa, ele só serve para deixar o programa mais rapido ao verificar os comandos.
     se(tela == 4.2){ //imagem3 de tela

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
     U.aguarde(100)
     tela = 4
     }
     }

     }
     }
     }
  }
  }
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
