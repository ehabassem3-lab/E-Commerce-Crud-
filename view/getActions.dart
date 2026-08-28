typedef Action = void Function();

void getAction(Action callback) {
  callback();
}