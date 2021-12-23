import 'dart:math';

class Game {
  static const maxRandom = 100;
  int? _answer;

  int Count = 0;
  int sum=0;

  Game() {
    var r = Random();
    _answer = r.nextInt(maxRandom) + 1;
  }

  int doGuess(int num) {
    if (num > _answer!) {
      Count++;
      sum=Count;
      return 1;

    } else if (num < _answer!) {
      Count++;
      sum=Count;
      return -1;
    } else {
      Count++;
      sum=Count;
      var r = Random();
      _answer = r.nextInt(maxRandom) + 1;
      Count=0;
      return 0;
    }
  }
}