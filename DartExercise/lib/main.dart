
import 'dart:io';

import 'model/exercise/exercise_factorial.dart';
import 'model/exercise/exercise_fibonacci.dart';
import 'model/exercise/exercise_one.dart';
import 'model/exercise/exercise_palindrome.dart';
import 'structure/exercise.dart';
import 'structure/success_callable.dart';

void printExercise(List<Exercise> exercises) {
  print('Choose one:');

  for (var i = 0; i < exercises.length; i++) {
    print('[$i] ${exercises[i].title()}');
    if(exercises[i].userInteractionRequired()) {
      print(' |-- Request user input');
    }
    print(' |-- ${exercises[i].content()}');
  }

  print('Type q for exit');
}

bool onSelected(Exercise e) {
  print(e.descriptionOnOpen());
  print('start this exercise? Y/n');

  var temp = stdin.readLineSync();
  temp = temp != null ? temp : '';

  return temp.isNotEmpty && temp == 'Y';
}

void main() {
  final List<Exercise> exercises = [
    ExerciseOne(),
    ExerciseFactorial(),
    ExercisePalindrome(),
    ExerciseFibonacci(),
  ];

  String? temp;
  do {
    printExercise(exercises);
    temp = stdin.readLineSync();
    temp = temp != null ? temp : 'e';

    switch(temp) {
      case 'e': {
        print('Error detected, try again');
        break;
      }
      case 'q': {
        print('Error detected, try again');
        exit(0);
      }
      case '0': {
        if(onSelected(exercises[0])) {
        }

        temp = onSelected(exercises[0]) ? 'k' : 'e';
        break;
      }
      case '1': {
        temp = onSelected(exercises[1]) ? 'k' : 'e';
        break;
      }
      case '2': {
        temp = onSelected(exercises[2]) ? 'k' : 'e';
        break;
      }
      case '3': {
        temp = onSelected(exercises[3]) ? 'k' : 'e';
        break;
      }
    }
  } while(temp != 'e');

}