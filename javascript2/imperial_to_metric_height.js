function convertInchesToCentimeters(heather){

	heightCentimeters = heather * 2.54;
	return heightCentimeters;
}




var myName = prompt("What is your name?");

var heightInches = prompt("How tall are you in inches?");

var weightPounds = prompt("How much do you weight in pounds?");

var heightCentimeters = heightInches * 2.54;

var weightKilograms = weightPounds * 0.453592;

console.log(myName + ' is ' + convertInchesToCentimeters(heightInches)+ ' cm and ' + weightKilograms + ' kg.');




