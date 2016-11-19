var name = prompt("What's your name?");
	var language = prompt("What language do you speak?");
	var saying = prompt("How do you say 'hello' in " + language + "?");
	var weight = prompt("How much do you weigh in pounds?");

function greeting(name,lang,saying) {

	console.log(saying + " " + name + "!");
};
function convertlbsTokg(weight){
	var kilos;
 kilos = weight * 0.45392;
 return kilos

}




greeting(name, language, saying);
console.log("You weigh " + convertlbsTokg(weight) + " kilos.");