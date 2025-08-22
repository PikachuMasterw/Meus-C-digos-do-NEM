window.addEventListener('DOMContentLoaded', () => {
  /* Bloqueia acesso não autorizado
  if (localStorage.getItem('perfilLogado') !== 'gerente') {
    window.location.href = 'login.html';
    return;
  }*/

  // Exibe nome do gerente logado
  const nomeGerente = localStorage.getItem('usuarioLogado') || 'Gerente';
  document.getElementById('nome-usuario').textContent = nomeGerente;

  const KEY         = 'gerenteData';
  const STORAGE_VER = 3;

  const defaults = {
    versao: STORAGE_VER,
    pedidos: [
      { id: '0054', cliente: 'Ana',   total: 32.90, status: 'Concluído',   data: '2025-07-08', recibo: 'Recibo #0054: detalhe...' },
      { id: '0055', cliente: 'Bruno', total: 18.50, status: 'Em andamento', data: '2025-07-08', recibo: 'Recibo #0055: detalhe...' },
      { id: '0056', cliente: 'Clara', total: 25.00, status: 'Pendente',     data: '2025-07-08', recibo: 'Recibo #0056: detalhe...' }
    ],
    funcionarios: [
      { nome: 'Entregador1', cargo: 'Entregador', salario: 1500 },
      { nome: 'Entregador2', cargo: 'Entregador', salario: 1600 },
      { nome: 'Gerente1',     cargo: 'Gerente',     salario: 3000 }
    ],
    reajustes: []
  };

  function initStorage() {
    const raw = localStorage.getItem(KEY);
    if (!raw) {
      localStorage.setItem(KEY, JSON.stringify(defaults));
      return JSON.parse(JSON.stringify(defaults));
    }
    const atual = JSON.parse(raw);
    if (atual.versao !== STORAGE_VER) {
      localStorage.setItem(KEY, JSON.stringify(defaults));
      return JSON.parse(JSON.stringify(defaults));
    }
    ['pedidos', 'funcionarios', 'reajustes'].forEach(prop => {
      if (!Array.isArray(atual[prop])) atual[prop] = defaults[prop];
    });
    return atual;
  }

  function saveStorage(obj) {
    obj.versao = STORAGE_VER;
    localStorage.setItem(KEY, JSON.stringify(obj));
  }

  const filtroSel   = document.getElementById('filtro-status');
  const pedidosBody = document.getElementById('pedidos-body');
  const funcsBody   = document.getElementById('funcionarios-body');
  const reajList    = document.getElementById('reajustes-list');
  const recibosBody = document.getElementById('recibos-body');

  let data = initStorage();

  // Renderiza pedidos com filtro
  function renderPedidos() {
    pedidosBody.innerHTML = '';
    data.pedidos
      .filter(p => filtroSel.value === 'Todos' || p.status === filtroSel.value)
      .forEach(p => {
        const tr = document.createElement('tr');
        tr.innerHTML = `
          <td>${p.id}</td>
          <td>${p.cliente}</td>
          <td>R$ ${p.total.toFixed(2)}</td>
          <td>${p.status}</td>
          <td>${p.data}</td>
        `;
        pedidosBody.appendChild(tr);
      });
  }
  filtroSel.addEventListener('change', renderPedidos);

  // Renderiza lista de funcionários
  function renderFuncionarios() {
    funcsBody.innerHTML = '';
    data.funcionarios.forEach((f, i) => {
      const tr = document.createElement('tr');
      tr.innerHTML = `
        <td>${f.nome}</td>
        <td>${f.cargo}</td>
        <td data-index="${i}" class="salario-cell">R$ ${f.salario.toFixed(2)}</td>
        <td><button class="btn-editar" data-index="${i}">Editar</button></td>
      `;
      funcsBody.appendChild(tr);
    });
  }

  // Edita salário
  funcsBody.addEventListener('click', e => {
    if (!e.target.matches('.btn-editar')) return;
    const i    = +e.target.dataset.index;
    const cell = funcsBody.querySelector(`td.salario-cell[data-index="${i}"]`);
    const old  = data.funcionarios[i].salario;
    cell.innerHTML = `
      <input type="number" class="inline-input" value="${old}" min="0" step="0.01"/>
      <button class="btn-salvar" data-index="${i}">Salvar</button>
    `;
  });

  // Salva salário editado e registra ajuste
  funcsBody.addEventListener('click', e => {
    if (!e.target.matches('.btn-salvar')) return;
    const i     = +e.target.dataset.index;
    const input = funcsBody.querySelector('input.inline-input');
    const novo  = parseFloat(input.value);
    if (isNaN(novo) || novo < 0) return alert('Valor inválido');
    const f = data.funcionarios[i];
    data.reajustes.push({
      nome: f.nome,
      salarioAntigo: f.salario,
      salarioNovo:   novo,
      data:          new Date().toISOString().slice(0,10)
    });
    f.salario = novo;
    saveStorage(data);
    renderFuncionarios();
    renderReajustes();
  });

  // Renderiza histórico de reajustes
  function renderReajustes() {
    reajList.innerHTML = '';
    data.reajustes.slice().reverse().forEach(r => {
      const li = document.createElement('li');
      li.textContent = `${r.data}: ${r.nome} de R$ ${r.salarioAntigo.toFixed(2)} → R$ ${r.salarioNovo.toFixed(2)}`;
      reajList.appendChild(li);
    });
  }

  // Renderiza recibos e permite encaminhar
  function renderRecibos() {
    recibosBody.innerHTML = '';
    data.pedidos.forEach(p => {
      const enc = p.encaminhado ? 'Sim' : 'Não';
      const tr = document.createElement('tr');
      tr.innerHTML = `
        <td>${p.id}</td>
        <td>${p.recibo}</td>
        <td>${enc}</td>
        <td>
          ${p.encaminhado
            ? ''
            : `<button class="btn-encaminhar" data-id="${p.id}">Encaminhar</button>`}
        </td>
      `;
      recibosBody.appendChild(tr);
    });
  }

  // Evento de encaminhar recibo ao entregador
  recibosBody.addEventListener('click', e => {
    if (!e.target.matches('.btn-encaminhar')) return;
    const id  = e.target.dataset.id;
    const ped = data.pedidos.find(x => x.id === id);
    if (ped) {
      ped.encaminhado = true;
      saveStorage(data);
      renderRecibos();
    }
  });

  // Renderizações iniciais
  renderPedidos();
  renderFuncionarios();
  renderReajustes();
  renderRecibos();
});