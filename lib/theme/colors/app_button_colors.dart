import 'package:flutter/material.dart';

class OthersColors {
  OthersColors({
    required this.request,
    required this.go,
    required this.man,
    required this.like,
    required this.notifications,
    required this.woman,
  });
  factory OthersColors.dark() => OthersColors(
        request: const Color(0xFFFFA800),
        go: const Color(0xFF232E69),
        man: const Color(0xFF232E69),
        like: const Color(0xFF0F0F0F),
        notifications: const Color(0xFFEC2A41),
        woman: const Color(0xFF661144),
      );

  factory OthersColors.light() => OthersColors(
        request: const Color(0xFFFFA800),
        go: const Color(0xFF3C50BD),
        man: const Color(0xFF232E69),
        like: const Color(0xFFFE303C),
        notifications: const Color(0xFFEC2A41),
        woman: const Color(0xFF661144),
      );

  // Цвет для кнопок карточки мероприятий отображающей статус мероприятия "запрос"
  // #FFA800
  final Color request;

  // Цвет для кнопок карочти мероприятий отоброжающей статус мероприятия "иду"
  //#FFA800
  final Color go;

  // Цвет для иконки Man на этапе регистрации
  // #FFA800
  final Color man;

  // цвет лайка
  // #0F0F0F
  final Color like;

  // цвет уведомления (курлешок который показывает что что-то произошло)
  // #EC2A41
  final Color notifications;

  // цвет задника для иконки девушки на этапе регистрации
  // #661144
  final Color woman;
}

/*// Цвет для кнопок карточки мероприятий отображающей статус мероприятия "запрос"
  // #FFA800
  final Color  request = const Color(0xFFFFA800);

  // Цвет для кнопок карочти мероприятий отоброжающей статус мероприятия "иду"
  //#FFA800
  final Color  go = const Color(0xFF232E69);

  // Цвет для иконки Man на этапе регистрации
  // #FFA800
  final Color  man = const Color(0xFF232E69);

  // цвет лайка
  // #0F0F0F
  final Color  like = const Color(0xFF0F0F0F);

  // цвет уведомления (курлешок который показывает что что-то произошло)
  // #EC2A41
  final Color  notifications = const Color(0xFFEC2A41);

  // цвет задника для иконки девушки на этапе регистрации
  // #661144
  final Color  woman = const Color(0xFF661144);
}*/
