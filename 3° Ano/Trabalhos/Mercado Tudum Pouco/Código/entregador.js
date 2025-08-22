window.addEventListener('DOMContentLoaded', () => {
  // // 1) Validação de acesso
  // const perfil = localStorage.getItem('perfilLogado');
  // const nome   = localStorage.getItem('usuarioLogado');
  // if (perfil !== 'entregador') {
  //   console.warn('Acesso negado:', perfil);
  //   return window.location.href = 'login.html';
  // }

  // 2) Exibe nome
  document.getElementById('nome-entregador').textContent = nome;

  const entregaBody = document.getElementById('entrega-body');
  const salarioEl   = document.getElementById('valor-salario');

  // 3) Função de inicialização: lê ou cria dados de exemplo
  function getGerenteData() {
    const raw = localStorage.getItem('gerenteData');
    if (raw) {
      try {
        return JSON.parse(raw);
      } catch {
        localStorage.removeItem('gerenteData');
      }
    }
    // fallback com exemplos
    const exemplo = {
      versao: 1,
      pedidos: [
        {
          id: '0061', cliente: 'Daniel',
          data: '2025-07-09',
          encaminhado: true
        },
        {
          id: '0062', cliente: 'Letícia',
          data: '2025-07-09',
          encaminhado: true
        }
      ],
      funcionarios: [
        { nome, cargo: 'Entregador', salario: 1800 }
      ]
    };
    localStorage.setItem('gerenteData', JSON.stringify(exemplo));
    return exemplo;
  }

  const gerenteData = getGerenteData();

  // 4) Renderiza rota
  function renderRota() {
    entregaBody.innerHTML = '';
    const pedidos = (gerenteData.pedidos || []).filter(p => p.encaminhado);

    if (!pedidos.length) {
      entregaBody.innerHTML =
        `<tr><td colspan="4">Nenhum pedido para entrega.</td></tr>`;
      return;
    }

    pedidos.forEach(p => {
      const endereco = `Rua ${p.cliente} nº${100 + Math.random()*300 | 0}`;
      const tr = document.createElement('tr');
      tr.innerHTML = `
        <td>${p.id}</td>
        <td>${p.cliente}</td>
        <td>${endereco}</td>
        <td>${p.data}</td>
      `;
      entregaBody.appendChild(tr);
    });
  }

  // 5) Renderiza salário
  function renderSalario() {
    const func = (gerenteData.funcionarios || [])
      .find(f => f.nome === nome && f.cargo === 'Entregador');
    salarioEl.textContent = func
      ? func.salario.toFixed(2)
      : 'Indefinido';
  }

  // 6) Chama renderizações
  renderRota();
  renderSalario();
});