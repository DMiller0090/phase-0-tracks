var colors = ["blue","green","purple","orange"]
var names = ["Ed","Misty","Brownie","Pharaoh"]

colors.push("yellow");
names.push("Chestnut");

var horses = {};
for(var i = 0; i < colors.length;i++){
	horses[names[i] ] = colors[i];
}	
console.log(horses)