import 'dart:io';

import 'func.dart';
import 'game.dart';

void menu() {
  var laugh_symbol = '\u{1f600}';
  print(
      'Добро пожаловать в Игру!$laugh_symbol \nСуть игры угадать число. Вы сражаетесь против программы.\nВыберите режим игры:\n Вы загадываете число,а программа угадывает = Напишите число 1\n Компьютер загадывает число и вы угадываете = Напишите число 2\n Играть по очереди(Раундами) = Напишите число 3\n Удачи!');
  String? menu1 = stdin.readLineSync();

  int user = 0;
  int programm = 0;
  if (menu1 == '1') {
    print('Укажите уровень сложности:\n "1"Низкий\n "2"Высокий');
    String? a = stdin.readLineSync();
    if (a == '1') {
      igraNizSloj();
    } else if (a == '2') {
      igraRecursolo();
    }
  } else if (menu1 == '2') {
    igra1solo();
  } else if (menu1 == '3') {
    print('Укажите уровень сложности:\n "1"Низкий\n "2"Высокий');
    String? a = stdin.readLineSync();
    if (a == '1') {
      igra3Sloj();
    } else if (a == '2') {
      igra3();
    }
  } else {
    print('К сожалению у нас только 2 игры\nПерезапустите еще раз!');
  }
}

void igra3() {
  print('kol raund');
  dynamic raund2 = stdin.readLineSync();
  int raun1 = 1;
  if (raund2 != '') {
    raun1 = int.parse(raund2);
  } else if (raund2 == '') {
    raun1 = 3;
  }

  int i = 0;
  int winUser = 0;
  int winProg = 0;
  while (raun1 > i) {
    print('Raund $i');
    int user = igra1();
    int prog = igraRecurs();
    if (user < prog) {
      winUser += 1;
    } else if (user > prog) {
      winProg += 1;
    }
    i++;
  }
  if (winUser > winProg) {
    print('Поздравляю вы оказались смышлённе прграммы!');
  } else if (winProg > winUser) {
    print('Не переживайте просто программе везет больше!');
  } else if (winProg == winUser) {
    print('Вы на одном уровне с программой это достижение!');
  }
  print('Счёт: Человечество=$winUser  Программа=$winProg');

  print(
      'Если хотите сыграть еще раз введите:1\nЕсли хотите выйти в меню введите:2\n');
  String? back = stdin.readLineSync();
  switch (back) {
    case '1':
      igra3();
      break;
    case '2':
      menu();
      break;
  }
}

void igra3Sloj() {
  print('kol raund');
  dynamic raund2 = stdin.readLineSync();
  int raun1 = 0;
  if (raund2 != '') {
    raun1 = int.parse(raund2);
  } else if (raund2 == '') {
    raun1 = 3;
  }

  int i = 0;
  int winUser = 0;
  int winProg = 0;
  while (raun1 > i) {
    print('Raund ${i + 1}');
    int user = igra1();
    int prog = igraNizSloj();
    if (user < prog) {
      winUser += 1;
    } else if (user > prog) {
      winProg += 1;
    }
    i++;
  }
  if (winUser > winProg) {
    print('Поздравляю вы оказались смышлённе прграммы!');
  } else if (winProg > winUser) {
    print('Не переживайте просто программе везет больше!');
  } else if (winProg == winUser) {
    print('Вы на одном уровне с программой это достижение!');
  }
  print('Счёт: Человечество=$winUser  Программа=$winProg');

  print(
      'Если хотите сыграть еще раз введите:1\nЕсли хотите выйти в меню введите:2\n');
  String? back = stdin.readLineSync();
  switch (back) {
    case '1':
      igra3Sloj();
      break;
    case '2':
      menu();
      break;
  }
}
