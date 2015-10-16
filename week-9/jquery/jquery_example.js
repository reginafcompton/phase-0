// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

$('body').css({'background-color': 'pink'})

//RELEASE 2:

bodyElement = $('body');
h1Element = $("h1");
divElement = $("div");
imgElement = $("img");
innerHeading = $("div > h1");

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
$("body > h1:first-child").css("color", "#387B87");
$("body > h1:first-child").css("border", "2px dashed #455794");
$("body > h1:first-child").css("visibility", "visible");
$(".mascot h1").html("Chicago Bobolinks");

//RELEASE 4: Event Listener
  // Add the code for the event listener here

$('img').on('mouseover', function(e){
  e.preventDefault()
  $(this).attr('src', 'bobolink.jpg');
  $(this).css("border", "0px solid #9e6693").animate({
        'borderWidth': '10px',
    }, 1000);
});
$('img').on('mouseleave', function(e) {
  e.preventDefault()
  $(this).attr("src", "devbootcamp-logo-new.png");
  $(this).css("border", "0px solid #9e6693").animate({
        'borderWidth': '0px',
    }, 5000);
});

//RELEASE 5: Experiment on your own

$("img").click(function() {
  $(this).animate({
    opacity: 0.4,
    height: "toggle",
    borderWidth: 4,
    borderColor: "#f37736",
  }, 3000, function() {
  });
});

})  // end of the document.ready function: do not remove or write DOM manipulation below this.

// What is jQuery?
// What does jQuery do for you?
// What did you learn about the DOM while working on this challenge?

// jQuery is a library; it provides low-stress add-ons to JavaScript.
// You connect jQuery to your HTML document very much like you would a CSS stylesheet:
// with a script tag (like a "link" tag) and also a src url to the jQuery library online.
// jQuery does a lot. It can add simple details to an otherwise basic website, e.g., changing the background color of a nav bar tab.
// Or it can add wild (sometimes obnoxious) animations to elements in the HTML document.
// The DOM (document object model) provides an object-oriented structure of a website.
// It is not the site itself, but rather a representation of its structure.
// Through the DOM, the jQuery script communicates with the HTML document.