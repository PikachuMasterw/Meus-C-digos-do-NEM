window.addEventListener('DOMContentLoaded', () => {
  // DOM
  const form      = document.getElementById('form-login');
  const perfilSel = document.getElementById('perfil');
  const userInput = document.getElementById('usuario');
  const pwdInput  = document.getElementById('senha');
  const btnLogin  = document.getElementById('btn-login');
  const errorMsg  = document.getElementById('error-msg');

  // 1. Versão do schema — incremente sempre que mudar defaults
  const STORAGE_VER = 7;

  // 2. Defaults incluindo 'versao'
  const defaults = {
    versao: STORAGE_VER,
    usuario: [
      { nome: 'cliente',  senha: '1234',       redirect: 'cliente.html' }
    ],
    gerente: [
      { nome: 'gerente1', senha: 'gerente123', redirect: 'gerente.html' }
    ],
    entregador: [
      { nome: 'entrega1', senha: 'entrega123', redirect: 'entregador.html' }
    ]
  };

  // 3. Inicializa ou mescla localStorage
  function initStorage() {
    const raw = localStorage.getItem('usuarios');
    if (!raw) {
      localStorage.setItem('usuarios', JSON.stringify(defaults));
      return;
    }
    const atual = JSON.parse(raw);
    if (atual.versao !== STORAGE_VER) {
      localStorage.setItem('usuarios', JSON.stringify(defaults));
      return;
    }
    ['usuario','gerente','entregador'].forEach(perf => {
      if (!Array.isArray(atual[perf])) {
        atual[perf] = defaults[perf];
      }
    });
    localStorage.setItem('usuarios', JSON.stringify(atual));
  }

  initStorage();

  // 4. Habilita botão ao preencher todos os campos
  [perfilSel, userInput, pwdInput].forEach(el =>
    el.addEventListener('input', () => {
      btnLogin.disabled = !(perfilSel.value && userInput.value.trim() && pwdInput.value);
    })
  );

  // 5. Submissão e validação
  form.addEventListener('submit', e => {
    e.preventDefault();
    const perfil = perfilSel.value;
    const nome   = userInput.value.trim();
    const senha  = pwdInput.value;

    const dados = JSON.parse(localStorage.getItem('usuarios'));
    const lista = dados[perfil] || [];
    const userOK = lista.find(u => u.nome === nome && u.senha === senha);

    if (userOK) {
      window.location.href = userOK.redirect;
    } else {
      errorMsg.textContent = 'Credenciais inválidas para o perfil selecionado.';
      errorMsg.classList.remove('hidden');
    }
  });
});