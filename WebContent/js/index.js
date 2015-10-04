var colors = document.getElementsByClassName('color');
var colorName = document.getElementById('colorName');
var chosenColorName;

for (i=0 ; i<10 ; i++){
	colors[i].addEventListener("click", function(event){
		var div = document.querySelector('.today-color-img-desc');
		var existed = div.firstElementChild;
		if(existed){
			console.log(existed);
			div.removeChild(existed);
		}
		chosenColorName = event.target.id
		console.log(chosenColorName);
		colorName.setAttribute('value', chosenColorName);
		var newEl = event.target.cloneNode(true);
		newEl.setAttribute('class','today-color-img');
		div.appendChild(newEl);
	}, false);
}
