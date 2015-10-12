// Pseudocode
// Create an empty container, i.e., an object, which holds a grocery item (string) and the qunatity of this item (an integer).
// Define four functions. The first, adds a property to the object. The second, deletes a property.
// The third, updates the property. And the fourth, prints the contents of the container in a readable list.

// Solution ONE
// This solution include four functions that modify the properties of an object.
var groceryList = {}
// var groceryList = new Object();

var addItem = function(list, item, quantity) {
  list[item] = quantity;
}

var deleteItem = function(list, item) {
  delete list[item];
}

var updateItem = function(list, item, newQuantity) {
  list[item] = newQuantity;
}

var printList = function(list) {
  for (item in list) {
    console.log(item + " " + list[item]);
  }
}

// Driver Code
addItem(groceryList, "apples", 7)
addItem(groceryList, "pasta sauce", 1)
addItem(groceryList, "milk", 1)
console.log(groceryList)

deleteItem(groceryList, "apples")
console.log(groceryList)

updateItem(groceryList, "pasta sauce", 2)
console.log(groceryList)

printList(groceryList)

// Solution TWO
// This partial solution uses a constructor function to create a single item.
function listItem(item, quantity) {
  this.item = item;
  this.quantity = quantity;
}

var itemOne = new listItem("bananas", 5)
console.log(itemOne.item)
console.log(itemOne.quantity)

var itemTwo = new listItem("pasta sauce", 1)
console.log(itemTwo.item)
console.log(itemTwo.quantity)

// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// What was the most difficult part of this challenge?
// Did an array or object make more sense to use and why?

// This challenge helped me review basic JS syntax: how to create an empty object
// (using literal and constructor notation), how to write a function, and how to
// write a constructor function.
// The most difficult part of this challenge: holding in my mind to multiple possibilities –
// for syntax and logic.
// An object makes sense, since it can hold properties and values.
