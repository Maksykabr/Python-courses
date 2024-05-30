const colorContainer = document.getElementById('colorContainer');
const changeColorAndTextButton = document.getElementById('changeColorAndTextButton');
const changeTextElement = document.getElementById('textId')

const addNewItem = document.getElementById('list1')
const addItemButton = document.getElementById('addItemButton')


changeColorAndTextButton.addEventListener('click', changeColorAndText);

function changeColorAndText(){
    const texts = ['text1', 'text2', 'text3', 'text4', 'text5', 'text6 '];
    const colors = ['red', 'blue', 'green', 'yellow', 'purple', 'orange'];
    const randomText = texts[Math.floor(Math.random() * texts.length)];
    const randomColor = colors[Math.floor(Math.random() * colors.length)];

    colorContainer.style.backgroundColor = randomColor;
    changeTextElement.textContent = randomText;
}

addItemButton.addEventListener('click', addItem);


function addItem(){
    var newItem = document.createElement('li');
  newItem.className = 'list-group-item';
  newItem.innerHTML = '<h1>New Item</h1>';
  addNewItem.appendChild(newItem);

};
