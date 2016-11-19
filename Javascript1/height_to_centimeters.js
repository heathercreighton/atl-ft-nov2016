var myName = "Heather";
var heightIninches = 60;
var weightInpounds = 120;
var heightCentimeters = heightIninches * 2.54;
var weightInkilos = weightInpounds * 0.453592;

console.log("Hello my name is " + myName +". I am " + heightCentimeters +" centimeters tall and " + weightInkilos +" kilos." );
 
 var a = prompt("What is your height in inches?");
 var b = prompt("What is your name in inches?");
 var c = prompt("What is your weight in inches?");
 console.log("Hello " + b +  "You are " + (a * 2.54) + "centimeters tall and " + (c * 0.45392) + "kilos in weight!");