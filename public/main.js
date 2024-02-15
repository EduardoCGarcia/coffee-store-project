const button = document.getElementById('button-addon2');
let inputValue = '';


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


const  createCard = (item) => {
  const cardDiv = document.createElement('div');
  cardDiv.classList.add('card');

  const img = document.createElement('img');
  img.src = item.url;
  img.classList.add('card-img-top');
  img.alt = '...';

  const cardBody = document.createElement('div');
  cardBody.classList.add('card-body');

  const cardTitle = document.createElement('h6');
  cardTitle.classList.add('card-title');
  cardTitle.textContent = `${item.name}`;

  const flavorText = document.createElement('p');
  flavorText.textContent = `${item.Flavor.flavor_name != "SOLO" ? item.Flavor.flavor_name : ''}`;

  const priceText = document.createElement('p');
  priceText.classList.add('card-text');
  priceText.textContent = `$ ${item.price}`;

  const sizeText = document.createElement('p');
  sizeText.textContent = `${item.Size.size_name != "UNICO" ? item.Size.size_name : ''}`;

  cardBody.appendChild(cardTitle);
  cardBody.appendChild(sizeText);
  cardBody.appendChild(flavorText);
  cardBody.appendChild(priceText);

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
    const card = createCard(item);
    cardsContainer.appendChild(card);
  });
}

window.addEventListener('DOMContentLoaded', renderCards);

button.addEventListener('click', () => {
  inputValue = document.querySelector('.form-control').value;
  renderCards();
});