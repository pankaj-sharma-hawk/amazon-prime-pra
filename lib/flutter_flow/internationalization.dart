import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'hi', 'ta', 'fr', 'es', 'pa'];

  String get languageCode => locale.toString();
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? hiText = '',
    String? taText = '',
    String? frText = '',
    String? esText = '',
    String? paText = '',
  }) =>
      [enText, hiText, taText, frText, esText, paText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.toString());

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Home
  {
    'gyb9brji': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
      'hi': 'घर',
      'pa': 'ਘਰ',
      'ta': 'வீடு',
    },
    'p69rzily': {
      'en': '>',
      'es': '&gt;',
      'fr': '&gt;',
      'hi': '&gt;',
      'pa': '&gt;',
      'ta': '&gt;',
    },
    't9efdlx6': {
      'en': '>',
      'es': '&gt;',
      'fr': '&gt;',
      'hi': '&gt;',
      'pa': '&gt;',
      'ta': '&gt;',
    },
    'ketx4i91': {
      'en': '>',
      'es': '&gt;',
      'fr': '&gt;',
      'hi': '&gt;',
      'pa': '&gt;',
      'ta': '&gt;',
    },
    '3b455sqg': {
      'en': '>',
      'es': '&gt;',
      'fr': '&gt;',
      'hi': '&gt;',
      'pa': '&gt;',
      'ta': '&gt;',
    },
    'uj2ardlz': {
      'en': '>',
      'es': '&gt;',
      'fr': '&gt;',
      'hi': '&gt;',
      'pa': '&gt;',
      'ta': '&gt;',
    },
    'g9ujhbs2': {
      'en': '>',
      'es': '&gt;',
      'fr': '&gt;',
      'hi': '&gt;',
      'pa': '&gt;',
      'ta': '&gt;',
    },
    'od8korui': {
      'en': '>',
      'es': '&gt;',
      'fr': '&gt;',
      'hi': '&gt;',
      'pa': '&gt;',
      'ta': '&gt;',
    },
    '4wgfduau': {
      'en': 'Movies',
      'es': 'Películas',
      'fr': 'Films',
      'hi': 'चलचित्र',
      'pa': 'ਫਿਲਮਾਂ',
      'ta': 'திரைப்படங்கள்',
    },
    'dyz1bsad': {
      'en': '>',
      'es': '&gt;',
      'fr': '&gt;',
      'hi': '&gt;',
      'pa': '&gt;',
      'ta': '&gt;',
    },
    'oej7uhgy': {
      'en': '>',
      'es': '&gt;',
      'fr': '&gt;',
      'hi': '&gt;',
      'pa': '&gt;',
      'ta': '&gt;',
    },
    'yayplsr8': {
      'en': '>',
      'es': '&gt;',
      'fr': '&gt;',
      'hi': '&gt;',
      'pa': '&gt;',
      'ta': '&gt;',
    },
    't7ulivru': {
      'en': '>',
      'es': '&gt;',
      'fr': '&gt;',
      'hi': '&gt;',
      'pa': '&gt;',
      'ta': '&gt;',
    },
    'buo4b6ij': {
      'en': '>',
      'es': '&gt;',
      'fr': '&gt;',
      'hi': '&gt;',
      'pa': '&gt;',
      'ta': '&gt;',
    },
    'phmkh4ry': {
      'en': '>',
      'es': '&gt;',
      'fr': '&gt;',
      'hi': '&gt;',
      'pa': '&gt;',
      'ta': '&gt;',
    },
    'vr9cjkya': {
      'en': '>',
      'es': '&gt;',
      'fr': '&gt;',
      'hi': '&gt;',
      'pa': '&gt;',
      'ta': '&gt;',
    },
    'uogaoq4q': {
      'en': 'TV Series',
      'es': 'Series de Televisión',
      'fr': 'Séries TV',
      'hi': 'टीवी श्रृंखला',
      'pa': 'ਟੀਵੀ ਲੜੀ',
      'ta': 'தொலைக்காட்சி தொடர்',
    },
    'is9ornbs': {
      'en': '>',
      'es': '&gt;',
      'fr': '&gt;',
      'hi': '&gt;',
      'pa': '&gt;',
      'ta': '&gt;',
    },
    'fccqbece': {
      'en': '>',
      'es': '&gt;',
      'fr': '&gt;',
      'hi': '&gt;',
      'pa': '&gt;',
      'ta': '&gt;',
    },
    'qblll1gy': {
      'en': '>',
      'es': '&gt;',
      'fr': '&gt;',
      'hi': '&gt;',
      'pa': '&gt;',
      'ta': '&gt;',
    },
    'pfc0bsqk': {
      'en': '>',
      'es': '&gt;',
      'fr': '&gt;',
      'hi': '&gt;',
      'pa': '&gt;',
      'ta': '&gt;',
    },
    'i1a1f183': {
      'en': '>',
      'es': '&gt;',
      'fr': '&gt;',
      'hi': '&gt;',
      'pa': '&gt;',
      'ta': '&gt;',
    },
    'pt9ezosv': {
      'en': '>',
      'es': '&gt;',
      'fr': '&gt;',
      'hi': '&gt;',
      'pa': '&gt;',
      'ta': '&gt;',
    },
    'opwtxv77': {
      'en': '>',
      'es': '&gt;',
      'fr': '&gt;',
      'hi': '&gt;',
      'pa': '&gt;',
      'ta': '&gt;',
    },
    'b0k0uqyn': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
      'hi': 'घर',
      'pa': 'ਘਰ',
      'ta': 'வீடு',
    },
  },
  // InfoPage
  {
    'idcdbtp5': {
      'en': 'prime',
      'es': 'principal',
      'fr': 'prime',
      'hi': 'प्रधान',
      'pa': 'ਪ੍ਰਧਾਨ',
      'ta': 'முதன்மை',
    },
    '83uusd4x': {
      'en': 'Included with Prime',
      'es': 'Incluido con Prime',
      'fr': 'Inclus avec Prime',
      'hi': 'प्राइम के साथ शामिल हैं',
      'pa': 'ਪ੍ਰਾਈਮ ਦੇ ਨਾਲ ਸ਼ਾਮਿਲ ਹੈ',
      'ta': 'பிரைமுடன் சேர்க்கப்பட்டுள்ளது',
    },
    'ykf14d6d': {
      'en': 'Watch Now',
      'es': 'Ver ahora',
      'fr': 'Regarde maintenant',
      'hi': 'अब देखिए',
      'pa': 'ਹੁਣੇ ਦੇਖੋ',
      'ta': 'இப்பொழுது பார்',
    },
    'wmezvk2f': {
      'en': 'Trailer',
      'es': 'Remolque',
      'fr': 'Bande annonce',
      'hi': 'ट्रेलर',
      'pa': 'ਟ੍ਰੇਲਰ',
      'ta': 'டிரெய்லர்',
    },
    'c5tqvtz4': {
      'en': 'Download',
      'es': 'Descargar',
      'fr': 'Télécharger',
      'hi': 'डाउनलोड',
      'pa': 'ਡਾਊਨਲੋਡ ਕਰੋ',
      'ta': 'பதிவிறக்க Tamil',
    },
    'g94ozlzl': {
      'en': 'Watchlist',
      'es': 'lista de seguimiento',
      'fr': 'Liste de surveillance',
      'hi': 'ध्यानसूची',
      'pa': 'ਵਾਚਲਿਸਟ',
      'ta': 'கண்காணிப்பு பட்டியல்',
    },
    '4o4r2oli': {
      'en': 'Share',
      'es': 'Cuota',
      'fr': 'Partager',
      'hi': 'शेयर करना',
      'pa': 'ਸ਼ੇਅਰ ਕਰੋ',
      'ta': 'பகிர்',
    },
    'jmo0e1e1': {
      'en': 'IMDb  ',
      'es': 'IMDb',
      'fr': 'IMDb',
      'hi': 'आईएमडीबी',
      'pa': 'ਆਈ.ਐਮ.ਡੀ.ਬੀ',
      'ta': 'IMDb',
    },
    'jvbwyv8b': {
      'en': 'Min',
      'es': 'mínimo',
      'fr': 'Min',
      'hi': 'मिनट',
      'pa': 'ਘੱਟੋ-ਘੱਟ',
      'ta': 'குறைந்தபட்சம்',
    },
    't0lu894t': {
      'en': 'Languages: ',
      'es': 'Idiomas:',
      'fr': 'Langues :',
      'hi': 'भाषाएँ:',
      'pa': 'ਭਾਸ਼ਾਵਾਂ:',
      'ta': 'மொழிகள்:',
    },
    '2y35ob62': {
      'en': 'Audio',
      'es': 'Audio',
      'fr': 'l&#39;audio',
      'hi': 'ऑडियो',
      'pa': 'ਆਡੀਓ',
      'ta': 'ஆடியோ',
    },
    '8hkz3uze': {
      'en': 'SubTitles',
      'es': 'Subtítulos',
      'fr': 'Les sous-titres',
      'hi': 'उपशीर्षक',
      'pa': 'ਉਪਸਿਰਲੇਖ',
      'ta': 'துணை தலைப்புகள்',
    },
    'ciw10x4c': {
      'en': 'List of Episodes  - ',
      'es': 'Lista de episodios -',
      'fr': 'Liste des épisodes -',
      'hi': 'एपिसोड की सूची -',
      'pa': 'ਐਪੀਸੋਡਾਂ ਦੀ ਸੂਚੀ -',
      'ta': 'அத்தியாயங்களின் பட்டியல் -',
    },
    'qejb09bb': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
      'hi': 'घर',
      'pa': 'ਘਰ',
      'ta': 'வீடு',
    },
  },
  // WatchPage
  {
    'sapju2vy': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
      'hi': 'घर',
      'pa': 'ਘਰ',
      'ta': 'வீடு',
    },
  },
  // Signin
  {
    'lkg07g3j': {
      'en': 'Sign-In',
      'es': 'Iniciar sesión',
      'fr': 'S&#39;identifier',
      'hi': 'साइन इन करें',
      'pa': 'ਸਾਈਨ - ਇਨ',
      'ta': 'உள்நுழையவும்',
    },
    '5eo3mkul': {
      'en': 'Forget password?',
      'es': '¿Contraseña olvidada?',
      'fr': 'Mot de passe oublié?',
      'hi': 'पासवर्ड भूल गया?',
      'pa': 'ਪਾਸਵਰਡ ਭੁੱਲ ਗਏ ਹੋ?',
      'ta': 'கடவுச்சொல்லை மறந்து?',
    },
    '7lbyafey': {
      'en': 'Email Id',
      'es': 'Identificación de correo',
      'fr': 'Identifiant de messagerie',
      'hi': 'ईमेल आईडी',
      'pa': 'ਈਮੇਲ ਆਈ.ਡੀ',
      'ta': 'மின்னஞ்சல் முகவரி',
    },
    '3cmwcqac': {
      'en': 'Password',
      'es': 'Clave',
      'fr': 'Mot de passe',
      'hi': 'पासवर्ड',
      'pa': 'ਪਾਸਵਰਡ',
      'ta': 'கடவுச்சொல்',
    },
    't0pp1h1l': {
      'en': 'Sign-In',
      'es': 'Iniciar sesión',
      'fr': 'S&#39;identifier',
      'hi': 'साइन इन करें',
      'pa': 'ਸਾਈਨ - ਇਨ',
      'ta': 'உள்நுழையவும்',
    },
    'tw3pqfdl': {
      'en': 'By Continuing, you agree to Amazon \'s ',
      'es': '',
      'fr': '',
      'hi': '',
      'pa': '',
      'ta': '',
    },
    'chxtibum': {
      'en': 'Condition of Use',
      'es': '',
      'fr': '',
      'hi': '',
      'pa': '',
      'ta': '',
    },
    '67vw75kp': {
      'en': 'and ',
      'es': '',
      'fr': '',
      'hi': '',
      'pa': '',
      'ta': '',
    },
    'we9iltv7': {
      'en': 'Privacy Notice',
      'es': '',
      'fr': '',
      'hi': '',
      'pa': '',
      'ta': '',
    },
    '6iluvuha': {
      'en': 'New to Amazon ?',
      'es': '¿Nuevo en Amazon?',
      'fr': 'Nouveau sur Amazon ?',
      'hi': 'अमेज़ॅन के लिए नया?',
      'pa': 'ਐਮਾਜ਼ਾਨ ਲਈ ਨਵਾਂ?',
      'ta': 'Amazon க்கு புதியதா?',
    },
    '58k7gaw1': {
      'en': 'Create a new Amazon Account',
      'es': 'Crear una nueva cuenta de Amazon',
      'fr': 'Créer un nouveau compte Amazon',
      'hi': 'एक नया अमेज़न खाता बनाएँ',
      'pa': 'ਇੱਕ ਨਵਾਂ ਐਮਾਜ਼ਾਨ ਖਾਤਾ ਬਣਾਓ',
      'ta': 'புதிய Amazon கணக்கை உருவாக்கவும்',
    },
    'q9j4y463': {
      'en': 'Condition of Use',
      'es': 'Condición de uso',
      'fr': 'Conditions d&#39;utilisation',
      'hi': 'उपयोग की शर्त',
      'pa': 'ਵਰਤੋਂ ਦੀ ਸਥਿਤੀ',
      'ta': 'பயன்பாட்டு நிபந்தனை',
    },
    'j58nz0tw': {
      'en': 'Privacy Notice',
      'es': 'Aviso de Privacidad',
      'fr': 'Avis de confidentialité',
      'hi': 'गोपनीयता सूचना',
      'pa': 'ਗੋਪਨੀਯਤਾ ਨੋਟਿਸ',
      'ta': 'தனியுரிமை அறிவிப்பு',
    },
    '4qkpkmpt': {
      'en': 'Help',
      'es': 'Ayuda',
      'fr': 'Aider',
      'hi': 'मदद करना',
      'pa': 'ਮਦਦ ਕਰੋ',
      'ta': 'உதவி',
    },
    'k8ibsa4y': {
      'en': '1996-2022, Amazon.com, inc. ',
      'es': '1996-2022, Amazon.com, Inc.',
      'fr': '1996-2022, Amazon.com, inc.',
      'hi': '1996-2022, Amazon.com, इंक।',
      'pa': '1996-2022, Amazon.com, inc.',
      'ta': '1996-2022, Amazon.com, inc.',
    },
    'mk6j10z5': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
      'hi': 'घर',
      'pa': 'ਘਰ',
      'ta': 'வீடு',
    },
  },
  // Search
  {
    'yax1mldp': {
      'en': 'Search',
      'es': 'Búsqueda',
      'fr': 'Chercher',
      'hi': 'खोज',
      'pa': 'ਖੋਜ',
      'ta': 'தேடு',
    },
    '7j480fmr': {
      'en': 'Min',
      'es': 'mínimo',
      'fr': 'Min',
      'hi': 'मिनट',
      'pa': 'ਘੱਟੋ-ਘੱਟ',
      'ta': 'குறைந்தபட்சம்',
    },
    'y4xffxu1': {
      'en': 'prime',
      'es': 'principal',
      'fr': 'prime',
      'hi': 'प्रधान',
      'pa': 'ਪ੍ਰਧਾਨ',
      'ta': 'முதன்மை',
    },
    'uol6hk3r': {
      'en': 'Search',
      'es': 'Búsqueda',
      'fr': 'Chercher',
      'hi': 'खोज',
      'pa': 'ਖੋਜ',
      'ta': 'தேடு',
    },
  },
  // Signup
  {
    'ag5lbb2t': {
      'en': 'Sign up with your mobile number',
      'es': 'Regístrate con tu número de móvil',
      'fr': 'Inscrivez-vous avec votre numéro de portable',
      'hi': 'अपने मोबाइल नंबर के साथ साइन अप करें',
      'pa': 'ਆਪਣੇ ਮੋਬਾਈਲ ਨੰਬਰ ਨਾਲ ਸਾਈਨ ਅੱਪ ਕਰੋ',
      'ta': 'உங்கள் மொபைல் எண்ணுடன் பதிவு செய்யவும்',
    },
    '5erwv1ly': {
      'en': 'First and Last name',
      'es': 'Nombre y Apellido',
      'fr': 'Nom et prénom',
      'hi': 'पहला और आखरी नाम',
      'pa': 'ਪਹਿਲਾ ਅਤੇ ਆਖਰੀ ਨਾਮ',
      'ta': 'முதல் மற்றும் இறுதி பெயர்',
    },
    'koym4lc6': {
      'en': 'Email Id',
      'es': 'Número de móvil o correo electrónico',
      'fr': 'numéro de portable ou e-mail',
      'hi': 'मोबाइल नंबर या ईमेल',
      'pa': 'ਮੋਬਾਈਲ ਨੰਬਰ ਜਾਂ ਈਮੇਲ',
      'ta': 'மொபைல் எண் அல்லது மின்னஞ்சல்',
    },
    'pv1llqb6': {
      'en': 'Create a Password',
      'es': 'Crear una contraseña',
      'fr': 'Créer un mot de passe',
      'hi': 'एक पासवर्ड बनाएं',
      'pa': 'ਇੱਕ ਪਾਸਵਰਡ ਬਣਾਓ',
      'ta': 'கடவுச்சொல்லை உருவாக்கவும்',
    },
    'zuggmulc': {
      'en': 'Continue',
      'es': 'Continuar',
      'fr': 'Continuer',
      'hi': 'जारी रखना',
      'pa': 'ਜਾਰੀ ਰੱਖੋ',
      'ta': 'தொடரவும்',
    },
    'ursubv54': {
      'en': 'Already have an account?',
      'es': '¿Ya tienes una cuenta?',
      'fr': 'Vous avez déjà un compte?',
      'hi': 'क्या आपके पास पहले से एक खाता मौजूद है?',
      'pa': 'ਕੀ ਪਹਿਲਾਂ ਤੋਂ ਹੀ ਖਾਤਾ ਹੈ?',
      'ta': 'ஏற்கனவே ஒரு கணக்கு உள்ளதா?',
    },
    'rf565gr7': {
      'en': 'Message and Data rates may apply.',
      'es': 'Se pueden aplicar tarifas por mensajes y datos.',
      'fr': 'Des messages et débits de données peuvent être appliqués.',
      'hi': 'संदेश और डेटा दरें लागू हो सकती हैं।',
      'pa': 'ਸੁਨੇਹਾ ਅਤੇ ਡਾਟਾ ਦਰਾਂ ਲਾਗੂ ਹੋ ਸਕਦੀਆਂ ਹਨ।',
      'ta': 'செய்தி மற்றும் தரவு கட்டணங்கள் பொருந்தலாம்.',
    },
    'iy39wfra': {
      'en': 'By Continuing, you agree to Amazon \'s ',
      'es': '',
      'fr': '',
      'hi': '',
      'pa': '',
      'ta': '',
    },
    'md8yscgz': {
      'en': 'Condition of Use',
      'es': '',
      'fr': '',
      'hi': '',
      'pa': '',
      'ta': '',
    },
    '9h5mxy1s': {
      'en': 'and ',
      'es': '',
      'fr': '',
      'hi': '',
      'pa': '',
      'ta': '',
    },
    'jtx4l4xp': {
      'en': 'Privacy Notice',
      'es': '',
      'fr': '',
      'hi': '',
      'pa': '',
      'ta': '',
    },
    'dhl1nzrt': {
      'en': 'Condition of Use',
      'es': 'Condición de uso',
      'fr': 'Conditions d&#39;utilisation',
      'hi': 'उपयोग की शर्त',
      'pa': 'ਵਰਤੋਂ ਦੀ ਸਥਿਤੀ',
      'ta': 'பயன்பாட்டு நிபந்தனை',
    },
    'tmp0jupu': {
      'en': 'Privacy Notice',
      'es': 'Aviso de Privacidad',
      'fr': 'Avis de confidentialité',
      'hi': 'गोपनीयता सूचना',
      'pa': 'ਗੋਪਨੀਯਤਾ ਨੋਟਿਸ',
      'ta': 'தனியுரிமை அறிவிப்பு',
    },
    'a596cihk': {
      'en': 'Help',
      'es': 'Ayuda',
      'fr': 'Aider',
      'hi': 'मदद करना',
      'pa': 'ਮਦਦ ਕਰੋ',
      'ta': 'உதவி',
    },
    '3kl61wlb': {
      'en': '1996-2022, Amazon.com, inc. ',
      'es': '1996-2022, Amazon.com, Inc.',
      'fr': '1996-2022, Amazon.com, inc.',
      'hi': '1996-2022, Amazon.com, इंक।',
      'pa': '1996-2022, Amazon.com, inc.',
      'ta': '1996-2022, Amazon.com, inc.',
    },
    '1qssqtpw': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
      'hi': 'घर',
      'pa': 'ਘਰ',
      'ta': 'வீடு',
    },
  },
  // Mystuffmenu
  {
    'wb3q0ojn': {
      'en': '                         Settings',
      'es': 'Ajustes',
      'fr': 'Réglages',
      'hi': 'समायोजन',
      'pa': 'ਸੈਟਿੰਗਾਂ',
      'ta': 'அமைப்புகள்',
    },
    'j0q6dxs1': {
      'en': 'Stream & Download',
      'es': 'Transmitir y descargar',
      'fr': 'Diffuser et télécharger',
      'hi': 'स्ट्रीम और डाउनलोड',
      'pa': 'ਸਟ੍ਰੀਮ ਅਤੇ ਡਾਊਨਲੋਡ ਕਰੋ',
      'ta': 'ஸ்ட்ரீம் &amp; பதிவிறக்கம்',
    },
    'mrczqu4q': {
      'en': 'Manage Quality and Wi-Fi',
      'es': 'Administrar calidad y Wi-Fi',
      'fr': 'Gérer la qualité et le Wi-Fi',
      'hi': 'गुणवत्ता और वाई-फाई प्रबंधित करें',
      'pa': 'ਗੁਣਵੱਤਾ ਅਤੇ Wi-Fi ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ',
      'ta': 'தரம் மற்றும் வைஃபையை நிர்வகிக்கவும்',
    },
    '97zed4z4': {
      'en': 'Notifications',
      'es': 'Notificaciones',
      'fr': 'Avis',
      'hi': 'सूचनाएं',
      'pa': 'ਸੂਚਨਾਵਾਂ',
      'ta': 'அறிவிப்புகள்',
    },
    'w40u43rb': {
      'en': 'On',
      'es': 'En',
      'fr': 'Sur',
      'hi': 'पर',
      'pa': '&#39;ਤੇ',
      'ta': 'அன்று',
    },
    'fnmecxiu': {
      'en': 'Auto Play',
      'es': 'Auto-reproducción',
      'fr': 'Lecture automatique',
      'hi': 'स्वत: प्ले',
      'pa': 'ਸਵੈ ਚਾਲ',
      'ta': 'தானியங்கி',
    },
    'ocnb0xvf': {
      'en': 'Play the next episode automatically',
      'es': 'Reproducir el próximo episodio automáticamente',
      'fr': 'Lire le prochain épisode automatiquement',
      'hi': 'अगला एपिसोड अपने आप चलाएं',
      'pa': 'ਅਗਲਾ ਐਪੀਸੋਡ ਆਪਣੇ ਆਪ ਚਲਾਓ',
      'ta': 'அடுத்த அத்தியாயத்தை தானாக இயக்கவும்',
    },
    '4b9y0dhf': {
      'en': 'Parental Controls',
      'es': 'Controles parentales',
      'fr': 'Controle parental',
      'hi': 'माता पिता द्वारा नियंत्रण',
      'pa': 'ਮਾਪਿਆਂ ਦੇ ਨਿਯੰਤਰਣ',
      'ta': 'பெற்றோர் கட்டுப்பாடுகள்',
    },
    't78qydtw': {
      'en': 'Control what you can watch',
      'es': 'Controla lo que puedes ver',
      'fr': 'Contrôlez ce que vous pouvez regarder',
      'hi': 'नियंत्रित करें कि आप क्या देख सकते हैं',
      'pa': 'ਕੰਟਰੋਲ ਕਰੋ ਕਿ ਤੁਸੀਂ ਕੀ ਦੇਖ ਸਕਦੇ ਹੋ',
      'ta': 'நீங்கள் பார்க்கக்கூடியவற்றைக் கட்டுப்படுத்தவும்',
    },
    'cdln0js4': {
      'en': 'Registered devices',
      'es': 'Dispositivos registrados',
      'fr': 'Appareils enregistrés',
      'hi': 'पंजीकृत उपकरण',
      'pa': 'ਰਜਿਸਟਰਡ ਡਿਵਾਈਸਾਂ',
      'ta': 'பதிவுசெய்யப்பட்ட சாதனங்கள்',
    },
    '7rs6xd7b': {
      'en': 'See all registered devices',
      'es': 'Ver todos los dispositivos registrados',
      'fr': 'Voir tous les appareils enregistrés',
      'hi': 'सभी पंजीकृत डिवाइस देखें',
      'pa': 'ਸਾਰੀਆਂ ਰਜਿਸਟਰਡ ਡਿਵਾਈਸਾਂ ਦੇਖੋ',
      'ta': 'பதிவுசெய்யப்பட்ட எல்லா சாதனங்களையும் பார்க்கவும்',
    },
    'tjaxg0oi': {
      'en': 'Clear video Serach History',
      'es': 'Borrar historial de búsqueda de video',
      'fr': 'Effacer l&#39;historique des recherches vidéo',
      'hi': 'वीडियो साफ़ करें Serach इतिहास',
      'pa': 'ਵੀਡੀਓ ਸਰਚ ਇਤਿਹਾਸ ਨੂੰ ਸਾਫ਼ ਕਰੋ',
      'ta': 'வீடியோ செராச் வரலாற்றை அழிக்கவும்',
    },
    '060b1aqs': {
      'en': 'Signed in as User',
      'es': 'Iniciar sesión como usuario',
      'fr': 'Connecté en tant qu&#39;utilisateur',
      'hi': 'उपयोगकर्ता के रूप में साइन इन किया गया',
      'pa': 'ਉਪਭੋਗਤਾ ਵਜੋਂ ਸਾਈਨ ਇਨ ਕੀਤਾ ਹੈ',
      'ta': 'பயனராக உள்நுழைந்துள்ளார்',
    },
    '6yuefbc2': {
      'en': 'Sign out of all amazon apps',
      'es': 'Cerrar sesión en todas las aplicaciones de Amazon',
      'fr': 'Déconnectez-vous de toutes les applications Amazon',
      'hi': 'सभी अमेज़न ऐप्स से साइन आउट करें',
      'pa': 'ਸਾਰੀਆਂ ਐਮਾਜ਼ਾਨ ਐਪਾਂ ਤੋਂ ਸਾਈਨ ਆਊਟ ਕਰੋ',
      'ta': 'அனைத்து அமேசான் பயன்பாடுகளிலிருந்தும் வெளியேறவும்',
    },
    'n23dnvk9': {
      'en': 'Manage your Prime Video Channels',
      'es': 'Administre sus canales de Prime Video',
      'fr': 'Gérez vos chaînes Prime Video',
      'hi': 'अपने प्राइम वीडियो चैनल प्रबंधित करें',
      'pa': 'ਆਪਣੇ ਪ੍ਰਾਈਮ ਵੀਡੀਓ ਚੈਨਲਾਂ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ',
      'ta': 'உங்கள் பிரைம் வீடியோ சேனல்களை நிர்வகிக்கவும்',
    },
    'lx5c5pgu': {
      'en': 'View or change your subscriptions',
      'es': 'Ver o cambiar sus suscripciones',
      'fr': 'Afficher ou modifier vos abonnements',
      'hi': 'अपनी सदस्यता देखें या बदलें',
      'pa': 'ਆਪਣੀਆਂ ਗਾਹਕੀਆਂ ਦੇਖੋ ਜਾਂ ਬਦਲੋ',
      'ta': 'உங்கள் சந்தாக்களைப் பார்க்கவும் அல்லது மாற்றவும்',
    },
    'kle1fxv6': {
      'en': 'Hidden Videos',
      'es': 'Vídeos ocultos',
      'fr': 'Vidéos cachées',
      'hi': 'छिपे हुए वीडियो',
      'pa': 'ਲੁਕੇ ਹੋਏ ਵੀਡੀਓ',
      'ta': 'மறைக்கப்பட்ட வீடியோக்கள்',
    },
    'gfwq9aek': {
      'en': 'Language',
      'es': 'Idioma',
      'fr': 'Langue',
      'hi': 'भाषा',
      'pa': 'ਭਾਸ਼ਾ',
      'ta': 'மொழி',
    },
    'a4vsxkz4': {
      'en': 'Help & Feedback',
      'es': 'Ayuda y comentarios',
      'fr': 'Aide et commentaires',
      'hi': 'सहायता और प्रतिक्रिया',
      'pa': 'ਮਦਦ ਅਤੇ ਫੀਡਬੈਕ',
      'ta': 'உதவி &amp; கருத்து',
    },
    'lhdorvhy': {
      'en': 'About & Legal',
      'es': 'Acerca de y Legal',
      'fr': 'À propos et juridique',
      'hi': 'के बारे में और कानूनी',
      'pa': 'ਬਾਰੇ ਅਤੇ ਕਾਨੂੰਨੀ',
      'ta': 'பற்றி &amp; சட்ட',
    },
    'kxj2z5u4': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
      'hi': 'घर',
      'pa': 'ਘਰ',
      'ta': 'வீடு',
    },
  },
  // MyStuff
  {
    'lrudixap': {
      'en': 'Watchlist',
      'es': 'lista de seguimiento',
      'fr': 'Liste de surveillance',
      'hi': 'ध्यानसूची',
      'pa': 'ਵਾਚਲਿਸਟ',
      'ta': 'கண்காணிப்பு பட்டியல்',
    },
    '8b8vsppf': {
      'en': 'Min',
      'es': 'mínimo',
      'fr': 'Min',
      'hi': 'मिनट',
      'pa': 'ਘੱਟੋ-ਘੱਟ',
      'ta': 'குறைந்தபட்சம்',
    },
    'jsyw0029': {
      'en': 'prime',
      'es': 'principal',
      'fr': 'prime',
      'hi': 'प्रधान',
      'pa': 'ਪ੍ਰਧਾਨ',
      'ta': 'முதன்மை',
    },
    '554xc7cs': {
      'en': 'My Stuff',
      'es': 'Mis cosas',
      'fr': 'Mes affaires',
      'hi': 'मेरा सामान',
      'pa': 'ਮੇਰੀ ਸਮੱਗਰੀ',
      'ta': 'என்னுடைய பொருட்கள்',
    },
  },
  // Languagepage
  {
    'ymmohwxz': {
      'en': 'Choose Language ',
      'es': 'Elige lengua',
      'fr': 'Choisissez la langue',
      'hi': 'भाषा चुनें',
      'pa': 'ਭਾਸ਼ਾ ਚੁਣੋ',
      'ta': 'மொழியைத் தேர்ந்தெடுக்கவும்',
    },
    'e7hduzxl': {
      'en': 'Option 1',
      'es': 'Opción 1',
      'fr': 'Option 1',
      'hi': 'विकल्प 1',
      'pa': 'ਵਿਕਲਪ 1',
      'ta': 'விருப்பம் 1',
    },
    'mx64ytwh': {
      'en': 'Submit',
      'es': 'Enviar',
      'fr': 'Soumettre',
      'hi': 'प्रस्तुत करना',
      'pa': 'ਜਮ੍ਹਾਂ ਕਰੋ',
      'ta': 'சமர்ப்பிக்கவும்',
    },
    'tum1e3bu': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
      'hi': 'घर',
      'pa': 'ਘਰ',
      'ta': 'வீடு',
    },
  },
  // Forgetpassword
  {
    '2pzizjyj': {
      'en': 'Page Title',
      'es': '',
      'fr': '',
      'hi': '',
      'pa': '',
      'ta': '',
    },
    '45u0z5t1': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
      'pa': '',
      'ta': '',
    },
  },
  // Videodelete
  {
    'jep8ee03': {
      'en': 'Remove From Watchlist',
      'es': 'Quitar de la lista de observación',
      'fr': 'Supprimer de la liste de surveillance',
      'hi': 'वॉचलिस्ट से निकालें',
      'pa': 'ਵਾਚਲਿਸਟ ਵਿੱਚੋਂ ਹਟਾਓ',
      'ta': 'கண்காணிப்பு பட்டியலிலிருந்து அகற்று',
    },
  },
  // Miscellaneous
  {
    '5qc5hwqc': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'pa': '',
      'ta': '',
    },
    'b536o24i': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'pa': '',
      'ta': '',
    },
    'btx4pt3z': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'pa': '',
      'ta': '',
    },
    '607yi6jc': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'pa': '',
      'ta': '',
    },
    'pnvjrmsm': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'pa': '',
      'ta': '',
    },
    'tll1sqb0': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'pa': '',
      'ta': '',
    },
    'i5x3s1y2': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'pa': '',
      'ta': '',
    },
    'g3u5tf74': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'pa': '',
      'ta': '',
    },
    'jlgdks7o': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'pa': '',
      'ta': '',
    },
    's2jnvo6u': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'pa': '',
      'ta': '',
    },
    'dkb9i0u6': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'pa': '',
      'ta': '',
    },
    '731fdqf9': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'pa': '',
      'ta': '',
    },
    'j0yih6oc': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'pa': '',
      'ta': '',
    },
    'wvb3u0ir': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'pa': '',
      'ta': '',
    },
    'c2nax72m': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'pa': '',
      'ta': '',
    },
    'vqrt5nb7': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'pa': '',
      'ta': '',
    },
    '4ervkx0q': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'pa': '',
      'ta': '',
    },
    'runduc5b': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'pa': '',
      'ta': '',
    },
    'qmwrff4r': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'pa': '',
      'ta': '',
    },
    'a32xqhb6': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'pa': '',
      'ta': '',
    },
  },
].reduce((a, b) => a..addAll(b));
