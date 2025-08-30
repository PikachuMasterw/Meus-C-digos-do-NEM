programa {
    inclua biblioteca Util --> u
    inclua biblioteca Matematica --> mat
    inclua biblioteca Texto --> tex
    
    funcao inicio() {
        inteiro repetir = 0
        real tela = 0
        cadeia comando = ""
        inteiro turno = 0
        inteiro batalha = 0
        
        // Variáveis do jogo
        cadeia player1 = "", player2 = "", pk1 = "", pk2 = "", passaDialogo = "", resposta = ""
        inteiro vida1 = 0, ivida1 = 0
        inteiro ataque1 = 0, ataque2 = 0, ataque3 = 0, ataque4 = 0
        inteiro iataque1 = 0, iataque2 = 0, iataque3 = 0, iataque4 = 0
        cadeia ataqueNome1 = "", ataqueNome2 = "", ataqueNome3 = "", ataqueNome4 = ""
        cadeia iataqueNome1 = "", iataqueNome2 = "", iataqueNome3 = "", iataqueNome4 = ""
        inteiro ia = 0
        
        enquanto (repetir == 0) {
            limpa()
            
            // TELA PRINCIPAL
            se (tela == 0) {
                escreva("              --PIKOMON--         \n")  
                escreva("                _______                         \n") 
                escreva("               |       |         1 -jogar        \n") 
                escreva("               |---O---|         2 -configurar   \n") 
                escreva("               |_______|                    \n")  
                escreva("                                         V.0.16.0[ALFA]         \n")
                escreva("                                 9 -sair         \n") 
                escreva("\nComando: ")
                leia(comando)
                
                se (comando == "1" ou comando == "jogar") {
                    tela = 2
                }
                senao se (comando == "2" ou comando == "configurar") {
                    tela = 1
                }
                senao se (comando == "9" ou comando == "sair") {
                    repetir = 1
                }
            }
            
            // TELA CONFIGURAÇÕES
            senao se (tela == 1) {
                escreva("       --CONFIGURAR--\n")  
                escreva("                                 \n") 
                escreva("                                 \n") 
                escreva("             NADA PRA VER AQUI!                    \n") 
                escreva("                                 \n")  
                escreva("                                 \n")
                escreva("                 0 -voltar       \n")  
                escreva("\nComando: ")
                leia(comando)
                
                se (comando == "0" ou comando == "voltar") {
                    tela = 0
                }
            }
            
            // TELA JOGO
            senao se (tela == 2) {
                escreva("                --JOGO--\n")  
                escreva("                                            \n") 
                escreva("                                4 -Novo jogo       \n") 
                escreva("                                       \n") 
                escreva("                                            \n")  
                escreva("                                            \n")
                escreva("                                 0 -voltar       \n")  
                escreva("\nComando: ")
                leia(comando)
                
                se (comando == "0" ou comando == "voltar") {
                    tela = 0
                }
                senao se (comando == "4" ou comando == "Novo jogo") {
                    tela = 3
                }
            }
            
            // TELA CARREGAMENTO
            senao se (tela == 3) {
                limpa()
                para(inteiro numeroAleatorio = 1; numeroAleatorio < 101; numeroAleatorio++) {
                    escreva(numeroAleatorio, "/100%\n")
                    u.aguarde(50)
                    limpa()
                }
                tela = 4
            }
            
            // DIÁLOGO INICIAL
            senao se (tela == 4) {
                escreva("??- Olá treinador!\n")
                escreva("Pressione Enter para continuar...")
                leia(passaDialogo)
                limpa()
                
                escreva("Prof. Palmeira- Me chame de Professor Palmeira!\n")
                escreva("Pressione Enter para continuar...")
                leia(passaDialogo)
                limpa()
                
                escreva("Prof. Palmeira- Eu sou um pesquisador de pikomons e explorei todo o mundo!\n")
                escreva("Pressione Enter para continuar...")
                leia(passaDialogo)
                limpa()
                
                escreva("Prof. Palmeira- Então... Eu esqueci o seu nome... Qual é o seu nome?\n")
                escreva("Digite seu nome: ")
                leia(player1)
                escreva("Ah sim! seu nome é ", player1, "!\n")
                escreva("Pressione Enter para continuar...")
                leia(passaDialogo)
                limpa()
                
                escreva("Prof. Palmeira- Você tem um amigo que conhece desde a sua infância, e ele é o meu neto!\n")
                escreva("Mas... Também esqueci o nome dele...\n")
                escreva("Pressione Enter para continuar...")
                leia(passaDialogo)
                limpa()
                
                escreva("??- VÔ!\n")
                escreva("Pressione Enter para continuar...")
                leia(passaDialogo)
                limpa()
                
                escreva("Prof. Palmeira- Então ", player1, ", qual o nome do seu amigo?\n")
                escreva("Digite o nome dele: ")
                leia(player2)
                escreva("AH sim! O nome dele é ", player2, "!\n")
                escreva("Pressione Enter para continuar...")
                leia(passaDialogo)
                limpa()
                
                escreva("Prof. Palmeira- Bom, agora você vai escolher o seu primeiro pikomon!\n")
                escreva("Pressione Enter para continuar...")
                leia(passaDialogo)
                
                tela = 4.1
            }
            
            // ESCOLHA DO PIKOMON
            senao se (tela == 4.1) {
                escreva("                                                            \n")  
                escreva("       _______         _______         _______              \n") 
                escreva("      |       |       |       |       |       |             \n") 
                escreva("      |---O---|       |---O---|       |---O---|             \n") 
                escreva("      |_______|       |_______|       |_______|             \n")  
                escreva("   1- Charmander     2- Squirtle   3- Bulbassauro           \n")
                escreva("                                                            \n")
                escreva("Escolha seu Pikomon: ")
                leia(comando)
                
                se (comando == "1" ou comando == "Charmander") {
                    pk1 = "Charmander"
                    pk2 = "Squirtle"
                    tela = 4.2
                }
                senao se (comando == "2" ou comando == "Squirtle") {
                    pk1 = "Squirtle"
                    pk2 = "Bulbassauro"
                    tela = 4.2
                }
                senao se (comando == "3" ou comando == "Bulbassauro") {
                    pk1 = "Bulbassauro"
                    pk2 = "Charmander"
                    tela = 4.2
                }
            }
            
            // CONFIGURAÇÃO DOS PIKOMONS
            senao se (tela == 4.2) {
                // Configuração do Pikomon do jogador
                se (pk1 == "Charmander") {
                    vida1 = 84
                    ataque1 = 19
                    ataqueNome1 = "BRASAS"
                    ataque2 = 17
                    ataqueNome2 = "ARRANHAR"
                    ataque3 = 0
                    ataqueNome3 = "GRITAR"
                    ataque4 = 0
                    ataqueNome4 = "CORTINA DE FUMAÇA"
                }
                senao se (pk1 == "Squirtle") {
                    vida1 = 87
                    ataque1 = 13
                    ataqueNome1 = "GIRO RÁPIDO"
                    ataque2 = 0
                    ataqueNome2 = "CHICOTE DE CAUDA"
                    ataque3 = 20
                    ataqueNome3 = "ARMA DE ÁGUA"
                    ataque4 = 17
                    ataqueNome4 = "INVESTIDA"
                }
                senao se (pk1 == "Bulbassauro") {
                    vida1 = 90
                    ataque1 = 18
                    ataqueNome1 = "INVESTIDA"
                    ataque2 = 19
                    ataqueNome2 = "CHICOTE DE VINHA"
                    ataque3 = 0
                    ataqueNome3 = "GRITO"
                    ataque4 = 0
                    ataqueNome4 = "SEMENTE SANGUE-SUGA"
                }
                
                // Configuração do Pikomon do inimigo
                se (pk2 == "Charmander") {
                    ivida1 = 84
                    iataque1 = 19
                    iataqueNome1 = "BRASAS"
                    iataque2 = 17
                    iataqueNome2 = "ARRANHAR"
                    iataque3 = 0
                    iataqueNome3 = "GRITAR"
                    iataque4 = 0
                    iataqueNome4 = "CORTINA DE FUMAÇA"
                }
                senao se (pk2 == "Squirtle") {
                    ivida1 = 87
                    iataque1 = 13
                    iataqueNome1 = "GIRO RÁPIDO"
                    iataque2 = 0
                    iataqueNome2 = "CHICOTE DE CAUDA"
                    iataque3 = 20
                    iataqueNome3 = "ARMA DE ÁGUA"
                    iataque4 = 17
                    iataqueNome4 = "INVESTIDA"
                }
                senao se (pk2 == "Bulbassauro") {
                    ivida1 = 90
                    iataque1 = 18
                    iataqueNome1 = "INVESTIDA"
                    iataque2 = 19
                    iataqueNome2 = "CHICOTE DE VINHA"
                    iataque3 = 0
                    iataqueNome3 = "GRITO"
                    iataque4 = 0
                    iataqueNome4 = "SEMENTE SANGUE-SUGA"
                }
                
                escreva("Prof. Palmeira- Bom, o seu primeiro pokemon vai ser o ", pk1, " e o meu neto escolheu o ", pk2, "!\n")
                escreva("Pressione Enter para continuar...")
                leia(passaDialogo)
                
                escreva(player2, "- Agora que nós dois temos pikomons, VAMOS FAZER UMA BATALHA PIKOMON!\n")
                escreva("Pressione Enter para continuar...")
                leia(passaDialogo)
                
                u.aguarde(3000)
                tela = 4.3
            }
            
            // CONFIRMAÇÃO DE BATALHA
            senao se (tela == 4.3) {
                escreva("Prosseguir? \nSim ou Não? (DIGITE A SUA RESPOSTA): ")
                leia(resposta)
                
                se (resposta == "Sim") {
                    tela = 5
                    batalha = 1
                }
                senao se (resposta == "Não") {
                    repetir = 1
                }
            }
            
            // TELA DE BATALHA PRINCIPAL
            senao se (tela == 5) {
                // Verificação de vitória/derrota ANTES de mostrar a tela
                se (ivida1 <= 0) {
                    ivida1 = 0
                    tela = 7  // Tela de vitória
                }
                senao se (vida1 <= 0) {
                    vida1 = 0
                    tela = 8  // Tela de derrota
                }
                senao {
                    escreva("\n                                              ")
                    escreva("\n                        __________   _______  ")
                    escreva("\n                       |          | |       | ")
                    escreva("\n                       |    ", ivida1, "    | |---O---| ")
                    escreva("\n                       |__________| |_______| ")
                    escreva("\n                                  ", pk2, "   ")
                    escreva("\n                                              ")
                    escreva("\n                                              ")
                    escreva("\n                                              ")
                    escreva("\n _______   _________                          ")
                    escreva("\n|       | |         |                         ")
                    escreva("\n|---O---| |   ", vida1, "    |                  ")
                    escreva("\n|_______| |_________|                         ")
                    escreva("\n", pk1, "                                      ")
                    escreva("\n _________________________________________    ")
                    escreva("\n|                 |1-Jogar      /3- Bolsa |   ")
                    escreva("\n|                 |            /          |   ")
                    escreva("\n|                 |2- Pikomons/  4- Sair  |   ")
                    escreva("\n|_________________|__________/____________|   ")
                    escreva("\nO QUE VOCÊ VAI FAZER? ")
                    leia(comando)
                    
                    se (comando == "1" ou comando == "Jogar") {
                        tela = 5.1
                    }
                    senao se (comando == "2" ou comando == "Pikomons") {
                        tela = 5.5
                    }
                    senao se (comando == "3" ou comando == "Bolsa") {
                        // Implementar bolsa
                    }
                    senao se (comando == "4" ou comando == "Sair") {
                        tela = 6
                    }
                    senao se (comando == "0" ou comando == "voltar") {
                        tela = 2
                    }
                }
            }
            
            // TELA DE ATAQUES
            senao se (tela == 5.1) {
                escreva("\n                                              ")
                escreva("\n                        __________   _______  ")
                escreva("\n                       |          | |       | ")
                escreva("\n                       |    ", ivida1, "    | |---O---| ")
                escreva("\n                       |__________| |_______| ")
                escreva("\n                                  ", pk2, "   ")
                escreva("\n                                              ")
                escreva("\n                                              ")
                escreva("\n                                              ")
                escreva("\n _______   _________                          ")
                escreva("\n|       | |         |                         ")
                escreva("\n|---O---| |   ", vida1, "    |                  ")
                escreva("\n|_______| |_________|                         ")
                escreva("\n", pk1, "                                      ")
                escreva("\n _________________________________________    ")
                escreva("\n| 1-", ataqueNome1, "                            ")
                escreva("\n| 2-", ataqueNome2, "                            ")
                escreva("\n| 3-", ataqueNome3, "                            ")
                escreva("\n| 4-", ataqueNome4, "                            ")
                escreva("\n|_________________________________________|    ")
                escreva("\nO QUE VOCÊ VAI FAZER? ")
                leia(comando)
                
                se (comando == "1") {
                    ivida1 = ivida1 - ataque1
                    turno = 1
                    tela = 5
                }
                senao se (comando == "2") {
                    ivida1 = ivida1 - ataque2
                    turno = 1
                    tela = 5
                }
                senao se (comando == "3") {
                    ivida1 = ivida1 - ataque3
                    turno = 1
                    tela = 5
                }
                senao se (comando == "4") {
                    ivida1 = ivida1 - ataque4
                    turno = 1
                    tela = 5
                }
                senao se (comando == "0" ou comando == "voltar") {
                    tela = 5
                }
            }
            
            // Turno do inimigo - APÓS o jogador atacar
            se (turno == 1 e batalha == 1 e tela == 5) {
                ia = u.sorteia(1, 4)
                se (ia == 1) {
                    vida1 = vida1 - iataque1
                    escreva("\n", pk2, " usou ", iataqueNome1, "!\n")
                }
                senao se (ia == 2) {
                    vida1 = vida1 - iataque2
                    escreva("\n", pk2, " usou ", iataqueNome2, "!\n")
                }
                senao se (ia == 3) {
                    vida1 = vida1 - iataque3
                    escreva("\n", pk2, " usou ", iataqueNome3, "!\n")
                }
                senao se (ia == 4) {
                    vida1 = vida1 - iataque4
                    escreva("\n", pk2, " usou ", iataqueNome4, "!\n")
                }
                turno = 0
                u.aguarde(2000)
            }
            
            // TELA DE VITÓRIA
            senao se (tela == 7) {
                limpa()
                escreva("\n                                              ")
                escreva("\n                        __________   _______  ")
                escreva("\n                       |          | |       | ")
                escreva("\n                       |    ", ivida1, "    | |---O---| ")
                escreva("\n                       |__________| |_______| ")
                escreva("\n                                  ", pk2, "   ")
                escreva("\n                                              ")
                escreva("\n                                              ")
                escreva("\n                                              ")
                escreva("\n _______   _________                          ")
                escreva("\n|       | |         |                         ")
                escreva("\n|---O---| |   ", vida1, "    |                  ")
                escreva("\n|_______| |_________|                         ")
                escreva("\n", pk1, "                                      ")
                escreva("\n _________________________________________    ")
                escreva("\n|                                         |   ")
                escreva("\n|  ", pk1, " ganhou!!!                    |   ")
                escreva("\n|                                         |   ")
                escreva("\n|_________________________________________|   ")
                u.aguarde(3000)
                tela = 9  // Vá para créditos
            }
            
            // TELA DE DERROTA
            senao se (tela == 8) {
                limpa()
                escreva("\n                                              ")
                escreva("\n                        __________   _______  ")
                escreva("\n                       |          | |       | ")
                escreva("\n                       |    ", ivida1, "    | |---O---| ")
                escreva("\n                       |__________| |_______| ")
                escreva("\n                                  ", pk2, "   ")
                escreva("\n                                              ")
                escreva("\n                                              ")
                escreva("\n                                              ")
                escreva("\n _______   _________                          ")
                escreva("\n|       | |         |                         ")
                escreva("\n|---O---| |   ", vida1, "    |                  ")
                escreva("\n|_______| |_________|                         ")
                escreva("\n", pk1, "                                      ")
                escreva("\n _________________________________________    ")
                escreva("\n|                                         |   ")
                escreva("\n|  ", pk2, " ganhou!!!                    |   ")
                escreva("\n|                                         |   ")
                escreva("\n|_________________________________________|   ")
                u.aguarde(3000)
                repetir = 1
            }
            
            // TELA DE CRÉDITOS
            senao se (tela == 9) {
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
                escreva("\nPressione Enter para sair...")
                leia(passaDialogo)
                repetir = 1
            }
        }
    }
}