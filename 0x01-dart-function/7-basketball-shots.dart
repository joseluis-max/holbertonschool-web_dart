int whoWins(Map<String, int> team1, Map<String, int> team2) {
  int team1Score = 0;
  int team2Score = 0;

  team1.forEach((shotType, score) {
    if (shotType == 'Free throws') {
      team1Score += score * 1;
    } else if (shotType == '2 pointers') {
      team1Score += score * 2;
    } else if (shotType == '3 pointers') {
      team1Score += score * 3;
    }
  });

  team2.forEach((shotType, score) {
    if (shotType == 'Free throws') {
      team2Score += score * 1;
    } else if (shotType == '2 pointers') {
      team2Score += score * 2;
    } else if (shotType == '3 pointers') {
      team2Score += score * 3;
    }
  });

  if (team1Score == team2Score) {
    return 0;
  } else if (team1Score > team2Score) {
    return 1;
  } else if (team1Score < team2Score) {
    return 2;
  }
  return 0;
}
