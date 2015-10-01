// Eloquent JavaScript
//INTRODUCTION
// I appreciate Haverbeke's discussion of programming as "many things."
// He addresses a interesting point: a program is data, stored in the computer's memory,
// but also the program is a force that controls data.

// CHAPTER 1
// At the fundamental level, JS and Ruby are remarkably similar.
// Both languages have the following "values" (i.e., chunks that represent pieces of data): numbers, strings, booleans, objects, functions, and undefined values.
// The languages can create and manipulate these values.
// In Ruby and JS, for example, a program can perform arithmetic operations by adding, subtracting, multiplying (etc.) integers and floats.
// Oddly, JS allows for great flexibility; a JS program, unlike Ruby, will silently convert values, so that an
// otherwise problematic code functions correctly.
// For example, if I were to add a string ("8") with an integer (2), JS will convert the integer to a string and concatenate the values ("82").
// A less forgiving, more ornery language, Ruby will raise an error.


// CHAPTER 2
// What is an expression?
// Expression, to quote Haverbeke, is "a fragment of code that produces a value."
// In short, the vast majority of JS statements can be understood as an expression: a boolean produces the value "true" or "false";
// an arithmetic problem produces an integer; a loop may produce a string; etc.


// What is the purpose of semicolons in JavaScript? Are they always required?
// Semicolons mark the end of expressions and statements.
// A semicolon need not appear at the end of every line of code. However, it is good practice to use them in abundance,
// until you understand the nuanced reasons as to why they may be omitted.


// What causes a variable to return undefined?
// A variable returns undefined if that variable does not have a value.


// Write your own variable and do something to it in the eloquent.js file.
var name = "Regina"
console.log(name.length * 4)


// What does console.log do and when would you use it? What Ruby method(s) is this similar to?
// Console.log outputs a value to a JavaScript console (typically, in your browser).
// It seems to resemble the Ruby command puts, in that they both reveal an output on a console.


// Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.
var answer = prompt("What's your favorite food?")
console.log("Hey! That's my favorite too!")


// Describe while and for loops. What other similarities or differences between Ruby and JavaScript did you notice in this section?
// A while loop yields to a code block, while a particular condition is met.
// For instance, the code block may be asked to print "Regina!", while a
// counter (set @ 0) is less than 10.
// A for loop yields to a code block, until certain conditions are met.
// For example, the code block may be asked to print "That's me!", while a variable (set @ 0) increases by 2, eventually reaching a maximum value.
// In short, while and for loops can do the same thing, though one may be preferred, depending on the particulars of the project.
// In Ruby and JS, the logic of "flow control" is the same. Both languages
// can create conditionals, giving the code greater flexibility.

// Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.

// Looping a Triangle
var brick = "#"
for (x = 0; x < 8; x++) {
  console.log(brick.repeat(x))
}

// FizzBuzz
var fizzBuzz = function() {
  for (num = 1; num < 101; num++) {
    if ((num % 3 == 0) && (num % 5 == 0)) {
      console.log("FizzBuzz");
    }
    else if (num % 3 == 0) {
      console.log("Fizz");
    }
    else if (num % 5 == 0) {
      console.log("Buzz");
    }
    else {
      console.log(num);
    }
  }
};

fizzBuzz()

// CHAPTER 3
// What are the differences between local and global variables in JavaScript?
// Local variables exist in a particular function (e.g., var x = "hello").
// They may be modified within the scope of a function, but cannot be called outside that function.
// Global variables, on the other hand, can appear in or outside of a function.
// This means, too, that a global ariable may be modified within a function.


// When should you use functions? What is a function declaration?
// Functions allow us to create "new vocabulary," giving JS objects more abilities
// and helping us communicate more precisely withour computer.
// You define a funciton by describing the variable name (var name = function), then
// giving the function a parameter(s) – if needed. The behaviors of the function
// appear between {}.


// Complete the `minimum` exercise.
var min = function (x, y) {
  if (x < y) {
    return x;
  }
  else {
    return y;
  }
};

console.log(min(9, 6))


// CHAPTER 4
// What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]
// Dot notation and bracket notation provide a way to access properties.
// With dot notation, the content after the dot refers to a property, and it fetches that property of the value.
// With bracket notation, the content inside the brackets refers to a variable, which is evaluated to return a property.


// What is a JavaScript object with a name and value property similar to in Ruby?
// A Javascript object very much resembles a Ruby hash!

// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
  name: "Regina",
  age: 30,
  favorite_foods: "fresh pasta, olives, mozzarella",
  quirk: "has ASMR"
}

console.log(me.name)

me.name = "Regina Compton"
console.log(me.name)