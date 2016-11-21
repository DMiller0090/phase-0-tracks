// Psuedocode
// Create a function that will reverse a string and takes a parameter of the string to reverse
// Create a new variable that will be the new, reversed string
// loop through the old string backwards, adding each character to the front of the new string
// return the string

function reverse(str){
  var new_str = "";
  for(i = str.length - 1; i >= 0; i--){
    console.log(i);
    new_str = new_str + str[i];
  }
  return new_str;
}

var test_str = reverse("potato");

if(test_str == "otatop"){
	console.log(test_str);
}