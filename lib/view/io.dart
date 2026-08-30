import 'dart:io';

String getInput(String prompt) {
  stdout.write(prompt);
  return stdin.readLineSync()?.trim() ?? '';
}

void showMessage(String message) {
  print(message);
}