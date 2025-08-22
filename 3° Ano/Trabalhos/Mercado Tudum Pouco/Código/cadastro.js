window.addEventListener('DOMContentLoaded', () => {
  const form        = document.getElementById('form-cadastro');
  const perfilSel   = document.getElementById('perfil');
  const userInput   = document.getElementById('usuario');
  const pwdInput    = document.getElementById('senha');
  const pwdConfirm  = document.getElementById('senha-confirm');
  const btnCadastro = document.getElementById('btn-cadastro');
  const msgCadastro = document.getElementById('msg-cadastro');

  // Versão atual do esquema — deve bater com login.js
  const STORAGE_VER = 7;

  // Ativa botão quando todos os campos estiverem preenchidos
  [perfilSel, userInput, pwdInput, pwdConfirm].forEach(el =>
    el.addEventListener('input', () => {
      const filled = perfilSel.value
                  && userInput.value.trim()
                  && pwdInput.value
                  && pwdConfirm.value;
      btnCadastro.disabled = !filled;
      msgCadastro.classList.add('hidden');
    })
  );

  // Obter dados do storage ou criar estrutura inicial
  function getUsuarios() {
    let dados = JSON.parse(localStorage.getItem('usuarios'));

    // Se não houver nada ou estiver com versão antiga, recria estrutura mínima
    if (!dados || !dados.versao || dados.versao !== STORAGE_VER) {
      dados = {
        versao: STORAGE_VER,
        usuario: [],
        gerente: [],
        entregador: []
      };
      localStorage.setItem('usuarios', JSON.stringify(dados));
    }

    return dados;
  }

  // Salvar no storage mantendo versão
  function setUsuarios(obj) {
    obj.versao = STORAGE_VER;
    localStorage.setItem('usuarios', JSON.stringify(obj));
  }

  form.addEventListener('submit', e => {
    e.preventDefault();
    const perfil  = perfilSel.value;
    const nome    = userInput.value.trim();
    const senha   = pwdInput.value;
    const confirm = pwdConfirm.value;

    if (senha !== confirm) {
      msgCadastro.textContent = 'As senhas não conferem.';
      msgCadastro.classList.remove('hidden');
      return;
    }

    const dados = getUsuarios();
    dados[perfil] = Array.isArray(dados[perfil]) ? dados[perfil] : [];

    // Evita duplicata
    if (dados[perfil].some(u => u.nome === nome)) {
      msgCadastro.textContent = 'Usuário já existe neste perfil.';
      msgCadastro.classList.remove('hidden');
      return;
    }

    const redirectMap = {
      usuario:   'cliente.html',
      gerente:   'gerente.html',
      entregador:'entregador.html'
    };

    dados[perfil].push({
      nome,
      senha,
      redirect: redirectMap[perfil] || 'login.html'
    });

    setUsuarios(dados);
    alert('Cadastro realizado com sucesso! Agora faça login.');
    window.location.href = 'login.html';
  });
});