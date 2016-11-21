// Release 0
// Psuedocode:
// Take a function with an array of strings as the parameter
// Have a variable that will keep track of the position in the array of the longest string
// Loop through the array of strings, checking the lengths
// If the length of the current position is longer than the current longest, update position
// Return the array at the position of the longest found string

function longest_phrase(arr){
  var longest_str_pos = 0;
  for(var i = 0; i < arr.length;i++){
    if(arr[i].length > arr[longest_str_pos].length){
      longest_str_pos = i;
    }
  }
  return arr[longest_str_pos];
}

// Driver code Release 0
var phrase = ["long phrase","longest phrase","longer phrase"];
console.log(longest_phrase(phrase));

// Release 1
// Psuedo code:
// Create a function with 2 objects as the paramaters
// Convert the keys into string arrays
// Iterate through one of the keys, checking to see if the current key exists in the other array
// If one is found, return true
// At the end, if none are found, return false

function check_matching_key(obj1, ojb2){
  key_arr1 = Object.keys(obj1);
  key_arr2 = Object.keys(obj2);
  for(var i = 0; i < key_arr1.length;i++){
    if(key_arr2.indexOf(key_arr1[i]) != -1){
      return true;
    }
  }
  return false;
}

// Driver code Release 1
obj1 = {name: "Steven", age: 54};
obj2 = {name: "Tamir", age: 54};
console.log(check_matching_key(obj1,obj2) );

// Release 2
// Psuedocode:
// Create a function with the size of the desired string array as the paramater
// Initialize empty array with the size specified in the paramaters
// Have a string variable that contains every character that we want to be avaiable for random selection
// Iterate through the empty initialized array to the size desired
//    intialize the value at the array to be an empty string
//    specify a random size for the string we will store into the array (between 1-10)
//    Iterate through empty string, adding a random character specified in the string variable of all
//      possible characters.
// repeat until the size of the array matches the paramater specifed
// Return the array
function create_ran_str_array(size){
  var array = [];
  array.length = size;
  var alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
  for(var i = 0; i < size; i++){
    array[i] = "";
    var ran_size = Math.floor(Math.random() * 10) + 1;  
    for(var j = 0; j < ran_size; j++){
      array[i] += alphabet.charAt(Math.floor(Math.random() * alphabet.length) );
    }
  }
  return array;
}

// Driver code Release 2
for(var i = 0; i <= 10; i++){
  var new_array = create_ran_str_array(4);
  console.log("New array: " + new_array);
  console.log("Longest word: " + longest_phrase(new_array));
}


