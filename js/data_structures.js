var colors = ["blue","green","purple","orange"];
var names = ["Ed","Misty","Brownie","Pharaoh"];

colors.push("yellow");
names.push("Chestnut");

var horses = {};
for(var i = 0; i < colors.length;i++){
	horses[names[i] ] = colors[i];
}	
console.log(horses);

function Car(model,year,color){
	console.log("New car:", this);
	this.model = model;
	this.year = year;
	this.color = color;

	this.accelerate = function(speed){
		console.log("Now going " + speed + "mph.");
	};
}

var carOne = new Car("Civic",2016,"Black");
carOne.accelerate(250);
console.log(carOne);

var carTwo = new Car("CX5",2017,"Red");
carTwo.accelerate(300);
console.log(carTwo);

var carThree = new Car("F150",2017,"White");
carThree.accelerate(100);
console.log(carThree);