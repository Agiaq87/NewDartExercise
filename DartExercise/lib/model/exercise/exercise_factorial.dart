import 'dart:io';

import '../../structure/error_callable.dart';
import '../../structure/exercise.dart';
import '../../structure/success_callable.dart';
import '../math/math.dart';

class ExerciseFactorial implements Exercise<int, String> {

  static final regex = RegExp(r'^\d+$');

  @override
  String content() => 'Evaluate Factorial without using recursion';

  @override
  String descriptionOnOpen() => 'Non recursive Factorial calculation';

  @override
  void execute(SuccessCallable<int> successCallable, ErrorCallable<String>? errorCallable) {
    print('Enter a end value:');
    var readed = stdin.readLineSync();
    readed = readed != null ? readed : '';
    
    if(readed.isEmpty || !readed.contains(regex)) {
      errorCallable != null ? errorCallable.onError('Using an incorrect value') : {readed = '100'};
      return;
    }
    
    var result = Math.factorial(int.tryParse(readed) ?? 100);
    print('Result is: $result');

    successCallable.onSuccess(result);
  }

  @override
  String title() => 'Factorial';

  @override
  bool userInteractionRequired() => true;
}
