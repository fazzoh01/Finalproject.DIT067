import 'dart:io'; 
void main() {
  String word = 'ITMAN';
  List<String> guessedLetters = []; 
  int attempts = 3; 

print('==WELCOME TO IT CHAMPION GAME!!==');
  void it5game() {
   
    for (int i = 0; i < attempts; i++) {
      print('==');
    }
  }
  bool isGameWon() {
    for (int i = 0; i < word.length; i++) {
      if (!guessedLetters.contains(word[i])) {
        return false;
      }
    }
    return true;
  }
   print('Guess a letter in capital letter:');
   while (attempts > 0) {
    it5game();
    String guess = stdin.readLineSync() ?? '';

    if (guessedLetters.contains(guess)) {
      print('You already guessed $guess!');
      print('Try to guess another letter');
    } else if (word.contains(guess)) {
      print('Good job! $guess is in the word.');
      print('Guess another letter');
      guessedLetters.add(guess);
      if (isGameWon()) {
        print('Congratulations! You won!');
        print('Game over! The word was $word.');
        return;
      }
    } else {
      print('Sorry $guess is not in the word.');
      print('Try to guess another letter');
      attempts--;
    }
  }
}