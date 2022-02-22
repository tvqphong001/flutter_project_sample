import 'package:get/get.dart';

class KeyLang{
  const KeyLang._();

  static const login ="login";
  static const register ="login";
  static const notiReaction = "notification_reaction";
  static const notiFollow = "notification_follow";
}

class Language extends Translations{

  @override
  Map<String, Map<String, String>> get keys => {
    'ja_JP': {
      'hello': 'Hallo Welt',
      KeyLang.notiReaction :"@name さんがあなたの投稿にいいね！しました。返事をしてもっと気持ちをシェアしましょう！",
      KeyLang.notiFollow :"@name さんがあなたをフォローしました！フォローを返して、仲良くなりましょう！",
    },
    'en_US': {
      'hello': 'Hello World',
      KeyLang.notiReaction :"@name さんがあなたの投稿にいいね！しました。返事をしてもっと気持ちをシェアしましょう！",
      KeyLang.notiFollow :"@name さんがあなたをフォローしました！フォローを返して、仲良くなりましょう！",
    },

  };
}