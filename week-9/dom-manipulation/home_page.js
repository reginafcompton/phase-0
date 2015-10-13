// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 0:




// Release 1:
document.getElementById("release-0").className = "done";



// Release 2:
document.getElementById("release-1").style.display = "none";



// Release 3:
document.getElementsByTagName("h1")[0].innerHTML = "I completed release 2.";



// Release 4:
document.getElementById("release-3").style.backgroundColor = "#955251";



// Release 5:
var releaseFour = document.getElementsByClassName("release-4");
  for (var i = 0; i < releaseFour.length; i++) {
    releaseFour[i].style.fontSize = "2em";
  }

// Release 6:
var tmpl = document.getElementById("hidden");
document.body.appendChild(tmpl.content.cloneNode(true));


// Reflect

// What did you learn about the DOM?
// What are some useful methods to use to manipulate the DOM?

// The DOM – an interface for HTML – provides an object-oriented representation
// of the website structure. (It is not the website itself, nor the HTML source.)
// Commands written in JavaScript can access and manipulate the DOM.
// The "getElementBy..." command is used to travel through the DOM and find
// elements (or nodes). The specific command, for instance, may look like this:
// document.getElementById("nav").style.color = "yellow";
// The "getElementById" command locates the element with the specifie ID, and
// the style and color commands update the property (i.e., the font color).