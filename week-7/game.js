// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Poppea seeks to marry her beloved Nero
// Goals: Poppea must outwit her enemies in three challenges
// Characters: Poppea (the user), Ottone, Seneca, Arnalta, Drusilla, Valleto
// Objects: Each character is an object.
// Functions:

// Pseudocode
// Guess a number
// Create a function that selects a random number between 1 and 20.
// Ask the user to guess that number.
//    IF user's guess is greater than the random number
//      Log: "Too high"
//      Prompt the user to guess again.
//    IF ELSE the user's guess is less than the random number
     // Log: "Too low"
     // Prompt the user to guess again.
   // ELSE
     // Log: "That's correct!"

// Initial Code

var leaveMe = function() {
  var randNum = Math.floor(Math.random() * 21) + 1;
  console.log(randNum)

  var number = prompt("Ottone loves you, and he insists that you reciprocate. You must tell him to 'go away' a specific number of times, before he will listen to your pleading. PICK A NUMBER BETWEEN 0 and 21:")

  if (number > randNum) {
    console.log("That's too much. Perhaps, you are not being sincere?");
  }
  else if (number < randNum) {
    console.log("Not enough! Ottone still persists.");
  }
  else {
    console.log("Just right!");
  console.log("Leave me alone".repeat(randNum))
  }

}

}





// Refactored Code






// Reflection
//
//
//
//
//
//
//
//