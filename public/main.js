// Función para obtener los datos de la API
async function fetchData() {
  try {
    const response = await fetch('http://localhost:3000/api/product');
    const data = await response.json();
    return data;
  } catch (error) {
    console.error('Error al obtener los datos de la API:', error);
    return []; // Devuelve un arreglo vacío en caso de error
  }
}

// Función para crear una tarjeta (card) basada en los datos proporcionados
function createCard(title, text, imgUrl) {
  const cardDiv = document.createElement('div');
  cardDiv.classList.add('card');

  const img = document.createElement('img');
  img.src = imgUrl;
  img.classList.add('card-img-top');
  img.alt = '...';

  const cardBody = document.createElement('div');
  cardBody.classList.add('card-body');

  const cardTitle = document.createElement('h8');
  cardTitle.classList.add('card-title');
  cardTitle.textContent = title;

  const cardText = document.createElement('p');
  cardText.classList.add('card-text');
  cardText.textContent = "$ " + text;

  /* const link = document.createElement('a');
  link.href = '#';
  link.classList.add('btn', 'btn-primary');
  link.textContent = 'Go somewhere'; */

  cardBody.appendChild(cardTitle);
  cardBody.appendChild(cardText);
  /* cardBody.appendChild(link); */

  cardDiv.appendChild(img);
  cardDiv.appendChild(cardBody);

  return cardDiv;
}

// Función para agregar las tarjetas al contenedor en el DOM
async function renderCards() {
  const cardsContainer = document.getElementById('cards-container');
  // Limpiar el contenedor antes de agregar nuevas tarjetas
  cardsContainer.innerHTML = '';

  // Obtener los datos de la API
  const data = await fetchData();
  
  // Recorrer los datos y agregar cada tarjeta al contenedor
  data.forEach(item => {
    const card = createCard(item.name, item.price, item.url);
    cardsContainer.appendChild(card);
  });
}

// Llamar a la función para renderizar las tarjetas al cargar la página
window.addEventListener('DOMContentLoaded', renderCards);
