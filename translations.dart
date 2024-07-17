import 'package:get/get.dart';

class AppTranslations extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'language': 'Language',
      'done': 'Done',
      'shop_anything_in_EU': 'Shop anything in EU',
      'get_started': 'Get Started',
      'onboarding_subtitle': 'Discover millions of online stores all in one app. Get a free EU shopping address, a virtual shopping card, fast home delivery and more.',
      // Add more key-value pairs here for English
    },

    'fr_FR': {
      'hello': 'Bonjour',
      'done': 'Fini',
      'language':'Langue',
      'get_started': 'Commencer',
      'shop_anything_in_EU': 'Achetez tout ce que vous voulez dans l\'UE',
      'onboarding_subtitle': 'Découvrez des millions de boutiques en ligne dans une seule application. Obtenez une adresse de shopping gratuite dans l\'UE, une carte de shopping virtuelle, une livraison rapide à domicile et plus encore.',
      // Add more key-value pairs here for French
    }
    // Add more languages here
  };
}