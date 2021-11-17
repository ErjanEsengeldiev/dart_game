import 'dart:io';

import 'dart:math';
import 'raundGame.dart';
import 'game.dart';

int igraRecurs() {
  double chislo = 50;
  chislo.round();
  double granicaverh = 100;
  double grabicanij = 0;
  int i = 1;
  print(
      'Добро пожаловать в игру!\nУсловия игры:\nКомпьютер пытается отгадать ваше число\nПишите "less"если ваше число меньше заданого\nПишите "greater" если больше\nПишите "yes" если прграмма угадала\nПриятной игры!\n\nНачинаем:\n');

  int igra() {
    print('Ваше число:${chislo.round()}?');
    String? otvet = stdin.readLineSync();
    if (otvet == 'yes') {
    } else if (otvet == 'less') {
      granicaverh = chislo;
      chislo = grabicanij + granicaverh;
      chislo = chislo / 2;
      chislo.round();
      i++;
      igra();
    } else if (otvet == 'greater') {
      grabicanij = chislo;
      chislo = grabicanij + granicaverh;
      chislo = chislo / 2;
      chislo.round();
      i++;
      igra();
    } else {
      igra();
    }
    return i;
  }

  igra();
  print('Вы отгадали за $i количество шагов!\nСпасибо за игру');

  return i;
}

int igra1() {
  print(
      'Добро пожаловать в игру!\nУсловия игры:\nПрограмма загадывает число от 1-100 вы должны отгадать\nВы пишите число\nЕсли ваше число меньше программа пишиет"less"\nЕсли ваше число меньше"greater"\nЕсли вы угадали программа пишет количество ваших попыток!\nХорошей игры!\nНачинаем!');
  int a = Random().nextInt(100);
  String end = '';
  int i = 1;

  int igrain1() {
    print('Введите предполагаемое вами число:');
    dynamic chislo = stdin.readLineSync();
    // bool check = (RegExp(r"^[0-9]+").hasMatch(chislo));
    // if (check == false) {
    //   igrain1();
    // }
    if (chislo == '') {}
    int chislo1 = int.parse(chislo);
    if (chislo1 == a) {
      return i;
    }
    if (chislo1 > a) {
      print('less');
      igrain1();
      i++;
    }
    if (chislo1 < a) {
      print('greater');
      igrain1();
      i++;
    }
    return i;
  }

  igrain1();

  print('Поздравляем!!! Вы отгадали за $i попыток\n\nСпасибо за игру!');

  return i;
}

int igraNizSloj() {
  print(
      'Добро пожаловать в игру!\nУсловия игры:\nКомпьютер пытается отгадать ваше число\nПишите "Yes"если это то число что вы загадали\nПишите "no" если это не то число что вы загадали\nПриятной игры!\n\nНачинаем:\n');
  print('Загадайте число и напишите: go');
  dynamic go = stdin.readLineSync();
  int res = 0;
  int j = 1;
  while (res != 1) {
    int i = Random().nextInt(100);
    print('Ваше число:$i?');
    dynamic otvet = stdin.readLineSync();
    if (otvet == 'yes') {
      res = 1;
    }
    j++;
  }
  print(
      "Программа Угадала ваше число с $jго раза.\n \nСпасибо за игру, ждем вас еще! \n\n");
  return j;
}

int igraRecursolo() {
  double chislo = 50;
  chislo.round();
  double granicaverh = 100;
  double grabicanij = 0;
  int i = 1;
  print(
      'Добро пожаловать в игру!\nУсловия игры:\nКомпьютер пытается отгадать ваше число\nПишите "less"если ваше число меньше заданого\nПишите "greater" если больше\nПишите "yes" если прграмма угадала\nПриятной игры!\n\nНачинаем:\n');

  void vozvrat() {
    print(
        'Вы отгадали за $i количество шагов!\nХотите сыграть еще? введите: 1\nХоите в меню введите: 2\nВыйти из игры 3');
    String? input = stdin.readLineSync();
    switch (input) {
      case '1':
        igraRecurs();
        break;
      case '2':
        menu();
        break;
      case '3':
        break;
      default:
        vozvrat();
        break;
    }
  }

  int igra() {
    void vozvrat() {
      print(
          'Вы отгадали за $i количество шагов!\nХотите сыграть еще? введите: 1\nХоите в меню введите: 2\nВыйти из игры 3');
      String? input = stdin.readLineSync();
      switch (input) {
        case '1':
          igraRecurs();
          break;
        case '2':
          menu();
          break;
        case '3':
          break;
        default:
          vozvrat();
          break;
      }
    }

    print('Ваше число:${chislo.round()}?');
    String? otvet = stdin.readLineSync();
    if (otvet == 'yes') {
      vozvrat();
    } else if (otvet == 'less') {
      granicaverh = chislo;
      chislo = grabicanij + granicaverh;
      chislo = chislo / 2;
      chislo.round();
      i++;
      igra();
    } else if (otvet == 'greater') {
      grabicanij = chislo;
      chislo = grabicanij + granicaverh;
      chislo = chislo / 2;
      chislo.round();
      i++;
      igra();
    } else {
      igra();
    }
    return i;
  }

  igra();
  vozvrat();

  return i;
}

int igra1solo() {
  print(
      'Добро пожаловать в игру!\nУсловия игры:\nПрограмма загадывает число от 1-100 вы должны отгадать\nВы пишите число\nЕсли ваше число меньше программа пишиет"less"\nЕсли ваше число меньше"greater"\nЕсли вы угадали программа пишет количество ваших попыток!\nХорошей игры!\nНачинаем!');
  int a = Random().nextInt(100);
  String end = '';
  int i = 1;
  int igrain1() {
    print('Введите предполагаемое вами число:');
    dynamic chislo = stdin.readLineSync();
    // bool check = (RegExp(r"^[0-9]+").hasMatch(chislo));
    // if (check == false) {
    //   igrain1();
    // }
    if (chislo == '') {
      chislo = 0;
    }
    int chislo1 = int.parse(chislo);
    if (chislo1 == a) {
      print('Вы отгадали за $i количество раз!');
      return i;
    }
    if (chislo1 > a) {
      print('less');
      igrain1();
      i++;
    }
    if (chislo1 < a) {
      print('greater');
      igrain1();
      i++;
    }

    return i;
  }

  igrain1();
  int vozvrat() {
    print(
        'Поздравляем!!! Вы отгадали за $i попыток\n\nСпасибо за игру!\nХотите сыграть еще? введите: 1\nХоите в меню введите: 2\n Выйти из игры 3');
    String? input = stdin.readLineSync();
    switch (input) {
      case '1':
        igraRecurs();
        break;
      case '2':
        menu();
        break;
      case '3':
        return i;
      default:
        vozvrat();
        break;
    }
    return i;
  }

  vozvrat();

  return i;
}
