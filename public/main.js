const button = document.getElementById('button-addon2');
let inputValue = '';
button.addEventListener('click', function() {
  inputValue = document.querySelector('.form-control').value;
  renderCards();
});

const getData = async () => {
  try {
    const response = await fetch('http://localhost:3000/api/product');
    const data = await response.json();
    return data;
  } catch (error) {
    console.error('Error al obtener los datos de la API:', error);
    return [];
  }
}

const filterDataByName = async (name) => {
  try {
    // Obtener todos los datos
    const allData = await getData();
    // Filtrar los datos por nombre que contengan el texto ingresado
    const filteredData = allData.filter(item => item.name.toLowerCase().includes(name.toLowerCase()));
    return filteredData;
  } catch (error) {
    console.error('Error al filtrar los datos por nombre:', error);
    return [];
  }
}


const  createCard = (title, text, imgUrl) => {
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

  cardBody.appendChild(cardTitle);
  cardBody.appendChild(cardText);

  cardDiv.appendChild(img);
  cardDiv.appendChild(cardBody);

  return cardDiv;
}

const renderCards = async () => {
  const cardsContainer = document.getElementById('cards-container');
  // Limpiar el contenedor antes de agregar nuevas tarjetas
  cardsContainer.innerHTML = '';

  // Obtener los datos de la API
  let data;
  if (!inputValue) {
    data = await getData();
  }else{
    data = await filterDataByName(inputValue);
  }
  
  // Recorrer los datos y agregar cada tarjeta al contenedor
  data.forEach(item => {
    const card = createCard(item.name, item.price, item.url);
    cardsContainer.appendChild(card);
  });
}

window.addEventListener('DOMContentLoaded', renderCards);
