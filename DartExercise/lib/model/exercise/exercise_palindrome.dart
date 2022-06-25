import 'dart:io';

import '../../structure/error_callable.dart';
import '../../structure/exercise.dart';
import '../../structure/success_callable.dart';
import '../extensions/string_extensions.dart';

class ExercisePalindrome implements Exercise<bool, String> {
  @override
  String content() => 'Detect if a word is palindrome';

  @override
  String descriptionOnOpen() => 'Insert a word to check if it\'s palindrome';

  @override
  void execute(SuccessCallable<bool> successCallable, ErrorCallable<String>? errorCallable) {
    print('Enter word to check:');
    var readed = stdin.readLineSync();
    readed = readed != null ? readed : '';

    if(readed.isEmpty) {
      errorCallable != null ? errorCallable.onError('Empty word detected') : null;
      return;
    }

    var result = readed.isPalindrome();
    print(readed.isPalindrome() ? 'palindrome word detected' : 'not a palindrome word');

    successCallable.onSuccess(result);
  }

  @override
  String title() => 'Palindrome word';

  @override
  bool userInteractionRequired() => true;

}