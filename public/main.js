// Contador de productos por orden
let spanNumProds = document.getElementById('num-prods');
// Total de la orden
let spanTotal = document.getElementById('total');
// Boton para terminar la orden
let btnTerminar = document.getElementById('btn_total');

// Producto buscado por el usuario 
let inputValue = '';
// Productos agregados por el usuarioo
let products = [];


/**
 * Obtiene los productos de la API.
 * @returns {Promise<Array>} Información obtenida desde la API.
 */
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

/**
 * Filtra los datos de la API por nombre.
 * @param {string} name - El nombre del producto a filtrar.
 * @returns {Promise<Array>} Datos filtrados por nombre.
 */
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

/**
 * Agrega un objeto al array o incrementa la cantidad si el objeto con el mismo product_id ya existe.
 * @param {Array} arr - El array al que se agregará el objeto.
 * @param {Object} newObject - El objeto que se agregará o actualizará en el array.
 * @returns {Array} El array actualizado con el nuevo objeto o la cantidad incrementada.
 */
const agregarProductoAOrden = (arr, newObject) => {
  const index = arr.findIndex(obj => obj.product_id === newObject.product_id);

  if (index !== -1) {
    arr[index].quantity += newObject.quantity;
  } else {
    arr.push(newObject);
  }

  return arr;
};

const actNumProds = (products) => {
  let num = 0;
  let total = 0;
  products.forEach(product => {
    num += product.quantity;
    total += product.quantity * product.product.price;
  });
  spanNumProds.innerHTML = num;
  spanTotal.innerHTML = `Total $ ${total}.00`
}

/**
 * Crea una tarjeta de producto.
 * @param {Object} item - Objeto que representa el producto.
 * @returns {HTMLElement} Elemento HTML que representa la tarjeta del producto.
 */
const createCard = (item) => {
  console.log(item);
  const cardDiv = document.createElement('div');
  cardDiv.classList.add('card');
  cardDiv.style.width = '9.6rem';
  cardDiv.addEventListener('click', () => {
    const product = {
      product: item,
      product_id: item.id,
      quantity: 1
    }
    agregarProductoAOrden(products, product)
    actNumProds(products)
    renderCardsForCart()

  });

  const img = document.createElement('img');
  img.src = "http://localhost:3000/assets/espresso.webp";
  img.classList.add('card-img-top');
  img.alt = '...';

  const cardBody = document.createElement('div');
  cardBody.classList.add('card-body');

  const cardTitle = document.createElement('h6');
  cardTitle.classList.add('card-title');
  cardTitle.textContent = `${item.name}`;

  const flavorText = document.createElement('p');
  flavorText.textContent = `${item.Flavor.flavor_name !== "SOLO" ? item.Flavor.flavor_name : ''}`;

  const priceText = document.createElement('p');
  priceText.classList.add('card-text');
  priceText.textContent = `$ ${item.price}`;

  const sizeText = document.createElement('p');
  sizeText.textContent = `${item.Size.size_name !== "UNICO" ? item.Size.size_name : ''}`;

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
  } else {
    data = await filterDataByName(inputValue);
  }

  // Recorrer los datos y agregar cada tarjeta al contenedor
  data.forEach(item => {
    const card = createCard(item);
    cardsContainer.appendChild(card);
  });
}



window.addEventListener('DOMContentLoaded', renderCards);

//Boton para el buscador
document.getElementById('button-addon2').addEventListener('click', () => {
  inputValue = document.querySelector('.form-control').value;
  renderCards();
});

btnTerminar.addEventListener('click', async () => {
  const data = {
    products: products
  };

  try {
    const response = await fetch('http://localhost:3000/api/sales',
      {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify(data)
      });

    if (!response.ok) {
      throw new Error('Error al enviar la solicitud');
    }

    const responseData = await response.json();
    console.log('Venta creada exitosamente:', responseData);

    products = [];
    actNumProds(products);

  } catch (error) {
    console.error('Error al crear la venta:', error);
  }
})

const vistaCarrito = document.getElementById('vista-carrito');
const body = document.body;
let carritoVisible = false;

function toggleCarrito() {
  if (!carritoVisible) {
    mostrarCarrito();
  } else {
    ocultarCarrito();
  }
}

function mostrarCarrito() {
  vistaCarrito.style.top = '0';
  body.style.overflow = 'hidden';
  carritoVisible = true;
}

function ocultarCarrito() {
  vistaCarrito.style.top = '-1000px';
  body.style.overflow = 'auto';
  carritoVisible = false;
}

document.getElementById('btn_carrito').addEventListener('click', toggleCarrito);

/* Inicio del carrito */

// Función para crear una tarjeta (card) basada en los datos proporcionados
function createCardForCart(product) {
  const cardDiv = document.createElement('div');
  cardDiv.classList.add('card');
  cardDiv.style.maxWidth = '540px';

  const rowDiv = document.createElement('div');
  rowDiv.classList.add('row', 'g-0');

  const imgCol = document.createElement('div');
  imgCol.classList.add('col-4');

  const img = document.createElement('img');
  img.src = 'http://localhost:3000/assets/espresso.webp';
  img.classList.add('img-fluid', 'rounded-start');
  img.alt = '...';

  imgCol.appendChild(img);

  const textCol = document.createElement('div');
  textCol.classList.add('col-8');

  const cardBody = document.createElement('div');
  cardBody.classList.add('card-body');

  const cardTitle = document.createElement('h5');
  cardTitle.classList.add('card-title');
  cardTitle.textContent = product.product.name;

  const cardText = document.createElement('p');
  cardText.classList.add('card-text');
  cardText.textContent = `Cantidad: [${product.quantity}]`;

  const lastUpdatedText = document.createElement('p');
  lastUpdatedText.classList.add('card-text');
  const small = document.createElement('small');
  small.classList.add('text-body-secondary');
  small.textContent = `Precio c/u: ${product.product.price}`;
  lastUpdatedText.appendChild(small);

  cardBody.appendChild(cardTitle);
  cardBody.appendChild(cardText);
  cardBody.appendChild(lastUpdatedText);

  textCol.appendChild(cardBody);

  rowDiv.appendChild(imgCol);
  rowDiv.appendChild(textCol);

  cardDiv.appendChild(rowDiv);

  return cardDiv;
}

// Función para agregar las tarjetas al contenedor en el DOM
function renderCardsForCart() {
  const cardsContainer = document.getElementById('vista-carrito');
  // Limpiar el contenedor antes de agregar nuevas tarjetas
  cardsContainer.innerHTML = '';
  // Recorrer el arreglo y agregar cada tarjeta al contenedor
  products.forEach(product => {
    console.log(product.product);
    const card = createCardForCart(product);
    cardsContainer.appendChild(card); 
  });
}


/* Fin del carrito */