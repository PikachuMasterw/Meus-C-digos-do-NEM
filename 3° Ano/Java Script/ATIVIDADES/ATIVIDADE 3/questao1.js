function verificarSenha(senha){
    if(senha.length < 8){
        return "Senha Fraca"
    }
    if(/[A-Z]/.test(senha) && /[0-9]/.test(senha)){
        return "Senha Forte"
    }else{
        return "Senha Média"
    }
    
}
console.log(verificarSenha("Batata"))
