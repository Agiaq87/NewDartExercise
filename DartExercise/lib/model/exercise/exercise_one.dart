
import '../../structure/error_callable.dart';
import '../../structure/exercise.dart';
import '../../structure/success_callable.dart';

class ExerciseOne implements Exercise<String, String> {
  @override
  String title() => 'Hello World';

  @override
  String content() => 'The simplest program ever';

  @override
  String descriptionOnOpen() => 'Write the classical \'Hello World\' program';

  @override
  bool userInteractionRequired() => false;

  @override
  void execute(SuccessCallable<String> successCallable, ErrorCallable<String>? errorCallable) {
    print('Hello World');
    successCallable.onSuccess('Hello World');
  }
}