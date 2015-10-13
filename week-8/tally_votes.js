// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with Eunice.
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}



/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// Pseudocode
// Iterate through each key of the "big" object.
// Within each key, iterate through each property.
//   IF property is "president, vice president...." then add the name of the     votes property to the voteCount object and add one to the value of the       voteCount property.
//   END


// __________________________________________
// Initial Solution

// for(var person in votes){
//   var name = votes[person];
//     for(var title in name) {
//       var votee = name[title];

//         if (title == "president") {
//              if (voteCount.president.hasOwnProperty(votee)) {
//                voteCount.president[votee] += 1;
//              }
//              else {
//               voteCount.president[votee] = 1;
//              }
//            }

//         else if (title == "vicePresident") {
//              if (voteCount.vicePresident.hasOwnProperty(votee)) {
//                 voteCount.vicePresident[votee] += 1;
//              }
//              else {
//               voteCount.vicePresident[votee] = 1;
//              }
//            }

//         else if (title == "secretary") {
//              if (voteCount.secretary.hasOwnProperty(votee)) {
//                 voteCount.secretary[votee] += 1;
//              }
//              else {
//               voteCount.secretary[votee] = 1;
//              }
//           }

//         else if (title == "treasurer") {
//              if (voteCount.treasurer.hasOwnProperty(votee)) {
//                 voteCount.treasurer[votee] += 1;
//              }
//              else {
//               voteCount.treasurer[votee] = 1;
//              }
//           }

//         }
//       };

// console.log(voteCount);


// for (var title in voteCount) {

//   if (title = "president") {
//     var votesCast = voteCount[title];
//     var votesForPresident = 0;
//     for (value in votesCast) {
//       if (votesCast[value] > votesForPresident) {
//           votesForPresident = votesCast[value];
//          }
//       }
//   }

//   if (title = "vicePresident") {
//     var votesCast = voteCount[title];
//     var votesForVicePresident = 0;
//     for (value in votesCast) {
//       if (votesCast[value] > votesForVicePresident) {
//           votesForVicePresident = votesCast[value];
//          }
//       }
//   }

//   if (title = "secretary") {
//       var votesCast = voteCount[title];
//       var votesForSecretary = 0;
//       for (value in votesCast) {
//         if (votesCast[value] > votesForSecretary) {
//             votesForSecretary = votesCast[value];
//            }
//         }
//     }

//   if (title = "treasurer") {
//     var votesCast = voteCount[title];
//     var votesForTreasurer = 0;
//     for (value in votesCast) {
//       if (votesCast[value] > votesForTreasurer) {
//           votesForTreasurer = votesCast[value];
//          }
//       }
//   }
// }
// console.log(votesForPresident);
// console.log(votesForVicePresident);
// console.log(votesForSecretary);
// console.log(votesForTreasurer);

// for (person in voteCount.president) {
//   var value = voteCount.president[person]
//     if (value == votesForPresident) {
//       officers.president = person;
//     }
// }

// for (person in voteCount.vicePresident) {
//   var value = voteCount.vicePresident[person]
//     if (value == votesForVicePresident) {
//       officers.vicePresident = person;
//     }
// }

// for (person in voteCount.secretary) {
//   var value = voteCount.secretary[person]
//     if (value == votesForSecretary) {
//       officers.secretary = person;
//     }
// }

// for (person in voteCount.treasurer) {
//   var value = voteCount.treasurer[person]
//     if (value == votesForTreasurer) {
//       officers.treasurer = person;
//     }
// }

// console.log(officers)



// __________________________________________
// Refactored Solution

for (var person in votes){
  var name = votes[person];
  for (var title in voteCount){
    if (voteCount[title][name[title]]) {
      (voteCount[title][name[title]]) += 1}
    else {
      (voteCount[title][name[title]]) = 1
    }
  }
}



for (var title in voteCount){
  var max = 0;
  for (var name in voteCount[title]){
    var count = voteCount[title][name];
    if (count > max) {
      max = count;
      var winner = name;
      officers[title] = winner
    }
  }
}




// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?
// Were you able to find useful methods to help you with this?
// What concepts were solidified in the process of working through this challenge?

// I learned about the importance of the .hasOwnProperty method, which determines
// if an object holds values. This method proves essential when comparing values
// within a given object, since it can check if the object has content in the first place.
// I solidified my understanding of the (for ... in) loop. I used this loop in
// nearly every part of the initial solution – I got to practice!
// The logic of object iteration in JavaScript is straightforward: the (for...in)
// loop allows the code to inspect the values of an object, and mulitple
// (for ... in) loops allows the code to inspect the values of nested objects.





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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)