extension Palindrome on String {
  bool isPalindrome() {
    if (this.isEmpty || this.length <= 1 || this.length % 2 != 0)
      return false;

    var temp = this.toLowerCase();

    for (var i = 0; i < temp.length; i++) {
      if (temp[i] != temp[temp.length - i -1]) {
        return false;
      } else {
        continue;
      }
    }

    return true;
  }
}