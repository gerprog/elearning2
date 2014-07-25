/* when the document is ready do all of this below */ 
$(document).on("ready", function(){
/* adds music */
$('body');
  var questions = [
  /* JSON list of questions and answers */
	{"text": "Q.1. What are Saturn's rings mostly made of?", "answers": ["Ice, dust and rock", "Icecream, old moons, biscuits", 
	"Dust", "Debris"], "correct": "Ice, dust and rock" },

	{"text": "Q.2. How old is the sun?", "answers": ["40 Billion years old", "4.5 Billion years old", "10 Billion years old", "No one knows"], "correct": "4.5 Billion years old" },

	{"text": "Q.3. When did humans first land on the moon?", "answers": ["We haven't yet", "1969", "1968", "1972"], "correct": "1969" },

	{"text": "Q.4. Can Astronauts only eat space food from a tube?", "answers": ["Yes, because it is cleanest", "Yes, because it is safer", 
	"No, they eat 3 packaged meals a day, fruit and vegetables", "No, they rely on timed drip feeds"], "correct": "No, they eat 3 packaged meals a day, fruit and vegetables" },
  ];
  /* setting up the variables */
	var score = 0
	var slide = ["images/tick.png"]
	/*var sound = ["monkeysound.wav"]*/
	

	/*function to display the question related to the score */ 
	var display_question = (function () {
		var question = questions[score];
		
		$("#question").text(question.text);
		$("#answer").empty();
		for( var i in question.answers) {
		/* loops through the answers */
			var answer = question.answers[i]
			$("#answer").append("<li>" + answer + "</li>");
		}
		/* checks to see if the answer clicked is the correct one */
		$("#answer li").on("click", validate_answer);
		
		//code below: source= http://codereview.stackexchange.com/questions/11948/randomize-a-jquery-object-list
		for (var $x=$("#answer li"), i=$x.length-1, j, temp; i>=0; i--) { j=Math.floor(Math.random()*(i+1)), temp=$x[i], $x[i]=$x[j], $x[j]=temp; }
		$x.each(function(i, li) { $("#answer").append(li);
		});
		
	});
	
	
	
/* function to check if the answer is correct */
	var validate_answer = (function () {
	/* if corrct increase score */
		if ($(this).text() == questions[score].correct) {
			score++;
		/* and display image and sound */	
		$('#slides_' + score).slideDown(700);
		$('body').append('<embed src="sounds/shinyding.wav" autostart="true" width="1" height="1" id="LegacySound" enablejavascript="true">');
            $('#ticks').fadeIn(500);
			/* displays next question depending on score if there is a question available */
			if (questions.length > score) {
				display_question();
				countdown = max_countdown;
			} else {
			/* if there are no questions left, provide a link to progress */
				$("#question").text("Well Done! You have completed the Solar System Quiz");
				$('#next_button').effect("shake", { times:2 }, 2000);
				/* use some effects */
				$('#slides').effect("bounce", { times:3 }, 2000);
				$("#answer").empty();
				/* stop the countdown */
				clearInterval(countdown_interval);
			}	
		} else {
		/* if wrong answer "try again" */
		  display_error();
		}
				display_score();

	});
	
	/* if a wrong answer is clicked fade out answere display a message which fades out and fade question back in */
	var display_error = (function() {
	
		display_question();
		
		$("#answer").fadeOut(500);
		$("#try").text("Try Again!").fadeIn(100).fadeOut(2000);

		  $("#answer").fadeIn(200);
		  /* countdown decreases */
		  countdown --;
	});
	
	/* score in multiples of 100 */
	var display_score = (function (){ 
			$(".Arial_Rd_DkGreen_40").text(score * 100);			
	});
	
	/* variables for countdown */
	var max_countdown = 60;
	var countdown = max_countdown;
	var display_countdown = (function() {
		$("#countdown").text(countdown);
	});
	
	/* if time runs out show link to restart level */
	var game_end = (function()  {
		$("#try").text("Try Again!").effect("shake",{  times: 4}, 3000);

		  countdown --;
	});
	
	/* function to decrease countdown, if countdown reaches 0 empty question and display game end function*/
	var countdown_interval = setInterval(function() {
			display_countdown();
			countdown--;
			if(countdown < 0){
			$("#answer").empty();
			$("#question").text("out of time");
			clearInterval(countdown_interval);
			game_end();
			}
			}, 1000);
			
	/* function to display appropriate slides and ticks */	
	var picture_change = (function(){
	if (score == 2) {
	$('#slides_1').slideDown(3000);
            $('#ticks').fadeIn(4000);
			}

	});
	
	display_question();
	display_score();


});
