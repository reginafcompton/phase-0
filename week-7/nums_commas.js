// Separate Numbers with Commas in JavaScript **Pairing Challenge**

// I worked on this challenge with Sam Purcell.

// Pseudocode
// Convert the number to a string.

// Create an IF statement:
// IF length of number is less than four, print the original number.

// set an index number at -4
// set a counter at 3
// WHILE counter is less than the length of the number
//   put a comma at the index number
//   then subtract 4 from the index number
//   then add three to the counter

// Solution

var separateComma = function(num) {
    var number_string = String(num);

    if (number_string.length < 4) {
      return console.log(number_string)
    };

    var num_index = -3
    var counter = 3

    while (counter < number_string.length -1) {
      number_string = number_string.slice(0, num_index) + "," + number_string.slice(num_index);
      num_index -= 4;
      counter += 3;
    };

    return console.log(number_string)
 };

separateComma(6433939393)

// Your Own Tests (OPTIONAL)


// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently? What did you learn about iterating over arrays in JavaScript? What was different about solving this problem in JavaScript? What built-in methods did you find to incorporate in your refactored solution?

// My pair and I more or less translated our Ruby solutions (as best we could remember) into Javascript.
// We were disappointed to discover that Javascript (apparently?) does not have a "synonym" for the .insert method in Ruby.
// As a result, our final code is a little more verbose then we desire.
// We used a WHILE loop to iterate over our string. (N.B. We converted the
// given number to a string, not an array.) In addition, we used the .slice function in Javascript,
// which extracts a "slice" of a string, according to given index numbers.
// We inserted a comma between the first slice and second slice, concatenating
// three strings into one.


