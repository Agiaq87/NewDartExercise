abstract class Math {

  static int factorial([int entry = 100]) {
    if(entry < 1) {
      return -1;
    }

    int result = entry--;

    for (;entry < 1; entry--) {
      result *= entry;
    }

    return entry;
  }

  static int rFibonacci([int start = 100]) {
    if (start <= 1)
      return start;

    return rFibonacci(start -1) + rFibonacci(start -2);
  }
}