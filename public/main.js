// Supongamos que tienes un arreglo de objetos llamado "data"
const data = [
    { title: "Card 1", text: "Some quick example text for Card 1.", imgUrl: "https://via.placeholder.com/100" },
    { title: "Card 2", text: "Some quick example text for Card 2.", imgUrl: "https://via.placeholder.com/100" },
    { title: "Card 3", text: "Some quick example text for Card 3.", imgUrl: "https://via.placeholder.com/100" },
    { title: "Card 1", text: "Some quick example text for Card 1.", imgUrl: "https://via.placeholder.com/100" },
    { title: "Card 2", text: "Some quick example text for Card 2.", imgUrl: "https://via.placeholder.com/100" },
    { title: "Card 3", text: "Some quick example text for Card 3.", imgUrl: "https://via.placeholder.com/100" },
    { title: "Card 1", text: "Some quick example text for Card 1.", imgUrl: "https://via.placeholder.com/100" },
    { title: "Card 2", text: "Some quick example text for Card 2.", imgUrl: "https://via.placeholder.com/100" },
    { title: "Card 3", text: "Some quick example text for Card 3.", imgUrl: "https://via.placeholder.com/100" },
  ];

  // Función para crear una tarjeta (card) basada en los datos proporcionados
  function createCard(title, text, imgUrl) {
    const cardDiv = document.createElement('div');
    cardDiv.classList.add('card');
    cardDiv.style.width = '13rem';

    const img = document.createElement('img');
    img.src = imgUrl;
    img.classList.add('card-img-top');
    img.alt = '...';

    const cardBody = document.createElement('div');
    cardBody.classList.add('card-body');

    const cardTitle = document.createElement('h5');
    cardTitle.classList.add('card-title');
    cardTitle.textContent = title;

    const cardText = document.createElement('p');
    cardText.classList.add('card-text');
    cardText.textContent = text;

    const link = document.createElement('a');
    link.href = '#';
    link.classList.add('btn', 'btn-primary');
    link.textContent = 'Go somewhere';

    cardBody.appendChild(cardTitle);
    cardBody.appendChild(cardText);
    cardBody.appendChild(link);

    cardDiv.appendChild(img);
    cardDiv.appendChild(cardBody);

    return cardDiv;
  }

  // Función para agregar las tarjetas al contenedor en el DOM
  function renderCards() {
    const cardsContainer = document.getElementById('cards-container');
    // Limpiar el contenedor antes de agregar nuevas tarjetas
    cardsContainer.innerHTML = '';
    // Recorrer el arreglo y agregar cada tarjeta al contenedor
    data.forEach(item => {
      const card = createCard(item.title, item.text, item.imgUrl);
      cardsContainer.appendChild(card);
    });
  }

  // Llamar a la función para renderizar las tarjetas al cargar la página
  window.addEventListener('DOMContentLoaded', renderCards);