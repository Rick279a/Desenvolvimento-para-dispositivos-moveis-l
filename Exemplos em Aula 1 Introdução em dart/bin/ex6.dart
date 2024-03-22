import 'dart:ffi';

void main(List<String> args) {
  String valor = '1';
  switch (valor) {
    case '1':
      print('1 é legal');
      break;
    case '2':
      String valor = '1';
      switch (valor) {
        case '1':
          print('1 é legal');
          break;
        case '2':
          print('2 é legal');
          break;
        default:
          print('não conheço');
          break;
      }
      print('2 é legal');
      break;
    default:
      print('não conheço');
      break;
  }
}
