//Create an array to store responses to the quiz questions
// so we can calculate the totals later. 
//Create an object called user where you will store information about your user, starting with name.
var user = {} //empty object
var responses = []//empty array
//write a function that will ask for the user’s name
// and save the answer in the user object.
function question1() {
	var name = prompt ('what is your name?')
	user.name = name
}

 question1 (); //call the function


function question2 () {
	
	var firstQuestion = prompt('Does null === 0 ? (Yes or No)')
	//convert answer to lowercase
	if (firstQuestion.toLowerCase () === 'yes') {
		firstQuestion = true;
	} else if (firstQuestion.toLowerCase() === 'no' {
		firstQuestion = false;
	} else {
		alert('Please answer either Yes or No');
		return question2();
	}
 	responses.push(firstQuestion); 
 }
question2 ();
 //add the true or false value to the responses array
//else is -->if the user decides to write somehting else, then they will have
//to answer again


 //now write a multiple choice question
//give at least three options
//convert the answer to lowercase
//use a switch statement to mark their answer as either true or false
//save the result in the responses object

function question3 () {
	var js = prompt ('What was the original name for javascript: Java, Livescript, Javalive, or ScriptScript?');
	js = js.toLowerCase();
	if (js == 'Livescript') {
			js = true;
	} else {
			js = false;
	}
	responses.push(js);
}
question3 ();

function question4(){
	var array = prompt ('What is an array in JS?');
	if (array == 'list of strings') {
			array = true;
	} else {
			array = false;
	}
	responses.push(array); 
}

question4();

function question5 () {
	var fileName = prompt ('What is Javascripts file name extension?');
	fileName = fileName.toLowerCase ();
	if (fileName == '.js') {
			fileName = true;
	} else {
			fileName = false;
	}
	responses.push(fileName);
}

question5 () 

function showResults() {
	alert('Student: ' + user.name + ' \nCorrect Answers: ' + totalCorrectAnswers  + '\nIncorrect Answers: ' + totalIncorrectAnswers + '\n Awesome, you are done!');
}

// call the function, passing it the responses array

function evaluate(responsesArray) {
// declare two variables to store the totals
	var correctAnswers = 0;
	var incorrectAnswers = 0;
// populate the “totals” variables from the “responsesArray”
	for (var i = 0, l = responsesArray.length; i < l; i++) {
		if (responsesArray[i] == true){
			correctAnswers += 1;
		} else {
			incorrectAnswers += 1;
		}
	}
	// save the “totals” variables inside the user object
	 totalCorrectAnswers = correctAnswers
	 totalIncorrectAnswers = incorrectAnswers
// call showResults
	showResults(); 
}

evaluate(responses);















