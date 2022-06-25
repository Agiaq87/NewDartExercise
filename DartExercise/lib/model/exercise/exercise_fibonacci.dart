import '../../structure/error_callable.dart';
import '../../structure/exercise.dart';
import '../../structure/success_callable.dart';
import 'dart:io';

import '../math/math.dart';

class ExerciseFibonacci implements Exercise<int, String> {
  @override
  String content() => 'Implement Fibonacci sequences';

  @override
  String descriptionOnOpen() => 'Recursive Fibonacci sequence';

  @override
  void execute(SuccessCallable<int> successCallable, ErrorCallable<String>? errorCallable) {
    print('Enter a end value or press start to use default value (100):');
    var readed = stdin.readLineSync();
    readed = readed != null ? readed : '';

    var result = Math.rFibonacci(int.tryParse(readed) ?? 100);
    print('Result is: $result');

    successCallable.onSuccess(result);
  }

  @override
  String title() => 'Fibonacci';

  @override
  bool userInteractionRequired() => true;

}