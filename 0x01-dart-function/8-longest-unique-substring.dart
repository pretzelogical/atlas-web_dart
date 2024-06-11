String longestUniqueSubstring(String str) {
  var longestSubString = '';
  var subString = '';
  for (var i = 0; i < str.length; i++) {
    if (!(subString.length < 1)) {
      if (subString.contains(str[i])) {
        subString = '';
      }
    }
    subString += str[i];
    if (subString.length > longestSubString.length) {
      longestSubString = subString;
    }
  }
  return longestSubString;
}