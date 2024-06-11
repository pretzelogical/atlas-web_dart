import '9-palindrome.dart';

String longestPalindrome(String s) {
  var longestPalin = '';
  for (var i = 0; i < s.length; i++) {
    for (var j = i + 1; j < s.length; j++) {
      if (isPalindrome(s.substring(i, j + 1)) && s.substring(i, j + 1).length > longestPalin.length) {
        longestPalin = s.substring(i, j + 1);
      }
    }
  }
  if (longestPalin.length < 3) {
    return 'none';
  }
  return longestPalin;
}