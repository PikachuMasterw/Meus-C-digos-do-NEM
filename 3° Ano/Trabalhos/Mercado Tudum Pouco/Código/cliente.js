// Elementos do DOM
const abrirBtn    = document.getElementById('abrir-carrinho');
const modal       = document.getElementById('modal-carrinho');
const fecharBtn   = document.getElementById('fechar-modal');
const lista       = document.getElementById('carrinho-lista');
const totalEl     = document.getElementById('total');
const contadorEl  = document.getElementById('contador-itens');
const finalizarBtn= document.getElementById('btn-finalizar');

let carrinho = {};

// Abre e fecha modal
abrirBtn.addEventListener('click', () => {
  modal.classList.remove('hidden');
  renderizarCarrinho();
});

fecharBtn.addEventListener('click', () => {
  modal.classList.add('hidden');
});

window.addEventListener('click', e => {
  if (e.target === modal) modal.classList.add('hidden');
});

// Adiciona produto
function adicionarAoCarrinho(nome, preco) {
  if (carrinho[nome]) {
    carrinho[nome].quantidade++;
  } else {
    carrinho[nome] = { preco, quantidade: 1 };
  }
  atualizarContador();
}

// Atualiza badge de itens
function atualizarContador() {
  const totalItens = Object.values(carrinho)
    .reduce((sum, item) => sum + item.quantidade, 0);
  contadorEl.textContent = totalItens;
}

// Renderiza lista e total dentro do modal
function renderizarCarrinho() {
  lista.innerHTML = '';
  let total = 0;

  for (let nome in carrinho) {
    const { preco, quantidade } = carrinho[nome];
    const subtotal = preco * quantidade;
    total += subtotal;

    const li = document.createElement('li');
    li.innerHTML = `
      <span>${nome} x${quantidade} — R$ ${subtotal.toFixed(2)}</span>
      <div>
        <button class="diminuir" data-produto="${nome}">−</button>
        <button class="remover"  data-produto="${nome}">✕</button>
      </div>
    `;
    lista.appendChild(li);
  }

  totalEl.textContent = total.toFixed(2);
  atualizarContador();
}

// Gerencia remover/diminuir via delegation
lista.addEventListener('click', e => {
  const prod = e.target.dataset.produto;
  if (!prod) return;

  if (e.target.classList.contains('remover')) {
    delete carrinho[prod];
  }
  if (e.target.classList.contains('diminuir')) {
    carrinho[prod].quantidade--;
    if (carrinho[prod].quantidade < 1) delete carrinho[prod];
  }
  renderizarCarrinho();
});

// Finaliza compra
finalizarBtn.addEventListener('click', () => {
  if (Object.keys(carrinho).length === 0) {
    alert('Carrinho vazio!');
    return;
  }
  alert('Compra finalizada! Obrigado por comprar no Mercadin.');
  carrinho = {};
  renderizarCarrinho();
  modal.classList.add('hidden');
});
