
import 'error_callable.dart';
import 'success_callable.dart';

abstract class Exercise<T,E> {
  String title();
  String content();

  String descriptionOnOpen();
  bool userInteractionRequired();

  void execute(SuccessCallable<T> successCallable, ErrorCallable<E>? errorCallable);
}