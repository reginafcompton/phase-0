// JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me 3 hours.

// Bulk Up
var winners = [
  {name: "sarah", event: "swimming"},
  {name: "ryan", event: "surfing"},
  {name: "sally", event: "soccer"}
]

console.log(winners)

var bulkUp = function (athletes) {
  for (var counter = 0; counter < athletes.length; counter++) {
    athletes[counter].win = athletes[counter].name + " won the event " + athletes[counter].event;
  }
};

console.log(bulkUp(winners))
console.log(winners)


// Jumble your words

function reversing(string){
  return string.split('').reverse().join('');
};

console.log(reversing("This is a new language"))



// 2,4,6,8
// Solution 1
function evens(array) {
  for (var i = 0; i < array.length; i++) {
    while (array[i] % 2 == 1) {
            array.splice(i, 1);
        }
     };
  console.log(array);
};

var array2 = [1, 3, 6, 8, 10, 12, 16, 17]
console.log(evens(array2))


// Solution 2
function evens (array){
 function isEven(value) {
    return value % 2 == 0;
  }
 var newArray = array.filter(isEven);
  return newArray
}

var array = [1, 3, 6, 8, 10, 12, 16, 17]
console.log(evens(array))

// "We built this city"

function Athlete(name, age, sport, quote) {
  this.name = name;
  this.sport = sport;
  this.quote = quote;
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
// What JavaScript knowledge did you solidify in this challenge?

// I feel increasingly more competent in JS syntax, especially building loops with counters.
// I learned, particularly, about putting objects inside of arrays, something that came up in earlier exercises, but did not really stick until today.



// What are constructor functions? How are constructors different from Ruby classes (in your research)?

// A constructor function provides one way to create a JS object (the other way – literal notation).
// A construction function allows you to create multiple instances of an object.
// Fundamentally, it resembles a class, which provides the blueprint for a Ruby object, including many of the objects "abilities" and behaviors, or methods.
// JS, however, seems more restrictive about passing variables from function-to-function, whereas Ruby has options: class variable, instance variables, and global variables.
//
