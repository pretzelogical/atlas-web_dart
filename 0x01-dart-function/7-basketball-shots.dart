int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int analyzeScores(key, value) {
    switch (key) {
      case 'Free throws':
        return value;
      case '2 pointers':
        return value * 2;
      case '3 pointers':
        return value * 3;
      default:
        return 0;
    }
  }

  int teamAScore = 0;
  int teamBScore = 0;
  teamA.forEach((key, value)
    => teamAScore += analyzeScores(key, value));
  teamB.forEach((key, value)
    => teamBScore += analyzeScores(key, value));

  if (teamAScore == teamBScore) {
    return 0;
  } else if (teamAScore > teamBScore) {
    return 1;
  } else {
    return 2;
  }
}