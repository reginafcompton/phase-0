/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with:]
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]



// __________________________________________
// Write your code below.

var gradebook = {
    Joseph: {testScores: scores[0]},
    Susan: {testScores: scores[1]},
    William: {testScores: scores[2]},
    Elizabeth: {testScores: scores[3]},

    addScore: function(name, score) {
      console.log(gradebook[name]["testScores"].push(score));
    },

    getAverage: function(name) {
      return average(this[name]["testScores"]);
    },
  };

var average = function(array) {
  var sum = 0;
  for(var i in array){
    sum += array[i];
  }
  return sum/array.length;
};


// gradebook["William"] = {}
// gradebook["Elizabeth"] = {}
// gradebook["William"]["testScores"] = [75, 70, 80, 75]
// gradebook["Elizabeth"]["testscores"] = [100, 90, 95, 85]

// console.log(gradeBook.addScore("Joseph",150))
// console.log(gradeBook["Susan"]["testScores"])
// console.log(gradeBook.average(gradeBook["Susan"]["testScores"]))
// console.log(gradeBook.getAverage("Susan"))


// __________________________________________
// Reflect

// What did you learn about adding functions to objects?
// I learned that it's possible to treat functions as object properties.
// However, you must be careful about making the function usable; the "this" keyword makes it possible to call the function to the object.


// How did you iterate over nested arrays in JavaScript?
// My pair and I used a for loop to iterate over a one-dimensional array,
// and we used chains of bracket notation to access elements nested inside of larger stuctures.


// Were there any new methods you were able to incorporate? If so, what were they and how did they work?
// I had not yet used .push in JavaScript, though this method is a familiar one (from Ruby).



// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)