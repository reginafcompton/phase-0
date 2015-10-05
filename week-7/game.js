// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Poppea seeks to marry her beloved Nero
// Goals: Poppea must outwit her enemies in three challenges
// Characters: Poppea (the user) and Ottavia
// Objects: Each character is an object.
// Functions:

// Pseudocode
// Challenge One
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

// Challenge Two
// Create a function that displays a word puzzle.
// The user must fill in blanks.
// Place the user's answers into an array.
// Compare the answer array with the solution array.
// IF the user guesses correctly, display which words are correct (iterate over array with index numbers.)

// Challenge Three
// Create  a function that displays a riddle (knave, knight, or spy?).
// Ask the user to give the function three parameters.
// IF the user guess correctly, she wins the game.
// ELSE the user must guess again.

// Initial Code
var howToPlay = "The adulterous love affair between the Roman emperor Nero and his sultry mistress Poppea provides a historical basis for many great works of fiction. \n In this game, Poppea must outwit her opponents and eventually surpass her rival Ottavia. Poppea faces three challenges: one of chance, one of word play, and one of logic. If the player completes these three challenges, she becomes the next empress of Rome and marries her beloved Nero. \n To play, log each challenge to the console, and then fill-in the function parameters accordingly. You can find driver code below to help you get started!"

console.log(howToPlay)

// CHARACTERS
var mistressPoppea = {
  city: "Rome",
  status: "single",
  favoriteThings: {dresses: 5, necklaces: 2, nurseConfidente: "Arnalta"}
}

var empressOttavia = {
  city: "Rome",
  status: "married",
  favoriteThings: {dresses: 5, necklaces: 2, nurseConfidente: "Nurse"}
}

// CHALLENGE ONE
var challengeOne = "Ottone loves you, and he insists that you reciprocate. You must tell him 'leave me alone' a particular number of times, before he will listen to your pleading. Call the function leaveMe, and give it a parameter between 0 and 10. Guess correctly, and earn a gift from Nero."

var repeat = function(string, times) {
       return (new Array(times + 1)).join(string + " ");
    }

var leaveMe = function(num) {
  var randNum = Math.floor(Math.random() * 10) + 1;
  console.log(randNum)

  if (num > randNum) {
    console.log("That's too much. Perhaps, you are not being sincere?");
  }
  else if (num < randNum) {
    console.log("Not enough! Ottone still persists.");
  }
  else {
    console.log("Just right!");
    console.log(repeat("Leave me alone", randNum));
    mistressPoppea.favoriteThings.necklaces += 1;
    console.log("Nicely done! Nero bought you a new necklace, of which you now have "  + mistressPoppea.favoriteThings.necklaces + ".")
  }
};

// CHALLENGE TWO
var challengeTwo = "The stoic philosopher Seneca does not always say what he means: he enjoys frivolous word games. Today, he is exclaiming short silly phrases, but each phrase lacks a keyword. \n 'Enjoy some ___ choy.' \n 'Now, run in a ___ zag.' \n 'Remember: it's not her, but ___.' \n The keyword has three letters; each letter resides in a different row on your keyboard. Call the function brokenLogic with the keywords as the parameters. Guess correctly, and earn a gift from Nero."

var brokenLogic = function(word1, word2, word3) {
  correctArray = ["bok", "zig", "him"];
  guessArray = [word1, word2, word3];

  if (correctArray.join('') == guessArray.join('')) {
    mistressPoppea.favoriteThings.dresses += 1;
    console.log("Terrific! You made sense of Seneca's word games. Nero bought you a new dress, of which you now own " + mistressPoppea.favoriteThings.dresses + ".");
    return
  }

  for (index = 0; index < 3; index++) {
      if (guessArray[index] == (correctArray[index])) {
        console.log("Word " + (index + 1) + " is correct.");
      }
    }
};

// CHALLENGE THREE
var challengeThree = "You meet three characters: Arnalta, Drusilla, and Valleto. One character always lies (the fiend!); one character always tells the truth (your friend!); and one character sometimes lies and sometimes speaks the truth (the two-faced neighbor!).\n Arnalta says,'Drusilla is the FIEND. \n Drusilla says, 'No, I am your TWO-FACED NEIGHBOR.' \n Valleto says, 'Okay, but Arnalta is your FRIEND.' \n Who can you trust? In the friendlyFiend function, type the names of the fiend, friend, and two-faced neighbor (in that order). Guess correctly, and become Nero's wife!"

var friendlyFiend = function (fiend1, friend2, twoFaced3) {
  solutionArray = ["Drusilla", "Arnalta", "Valleto"];
  userArray = [fiend1, friend2, twoFaced3];

  if (solutionArray.join('') == userArray.join('')) {
    console.log("That's right! Indeed, Drusilla is actually Ottone-in-disguise on a mission to kill you.")
    empressOttavia["status"] = "divorced";
    empressOttavia["city"] = "EXILED";
    mistressPoppea["status"] = "married";
    return
  }

  for (index = 0; index < 3; index++) {
    if (solutionArray[index] == userArray[index]) {
      console.log("Person " + (index + 1) + " is correct.");
    }
  }

};

// DID YOU WIN?
var characterCheck = function() {
  if (mistressPoppea.status == "married" && mistressPoppea.favoriteThings.dresses == 6 && mistressPoppea.favoriteThings.necklaces == 3) {
    console.log("Congratulations! Nero divorced the Empress Ottavia, and you are his new wife.");
  }
  else {
    console.log("Sorry! Ottavia maintains her position as Roman ruler.");
  }
};

// Driver Code

console.log(challengeOne)
leaveMe()

console.log(challengeTwo)
brokenLogic()

console.log(challengeThree)
friendlyFiend()

characterCheck()
// Reflection
// What was the most difficult part of this challenge? What did you learn about creating objects and functions that interact with one another? How can you access and manipulate properties of objects?
//
// I had some difficulty in "permanently" changing the properties of the objects. Namely, I struggled to find the right syntax.
// I also spent some time thinking about the game concept and how to best implement it.
// I am still not sure how to make this game user friendly – as it stands, the user needs some knowledge of JS to play.
// I might consider using the .prompt method, but then I cannot test the game in node.
// To access and manipulate objects, you can use dot or bracket notation.
// My code uses both. For instance, I increased an integer (the count of a property) by using this notation: mistressPoppea.favoriteThings.dresses += 1.
// However, to modify a string property, I used the following: empressOttavia["status"] = "divorced". You could, theoretically, use dot notation to modify strings, but then you must navigate the difficulty of deleting the current string property.



// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
//
// Yes, I used the Math.num method to generate random numbers.
// Unfortunately, I seem to find that JS does not have an impressive
// vocabulary of built-in methods (at least compared to Ruby), and
// in one case, I had to create my own function (.repeat).
//
//
//