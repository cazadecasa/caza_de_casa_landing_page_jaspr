class AppConfig {
  static const String appName = 'Caza de Casa';
  static const String appLogo = 'images/app-icon.png';
  static const String appLogoLight = 'images/app-icon-light.png';

  static const Map<String, String> navLinks = {
    'Home': '/',
    'Privacy': '/privacy',
    'Terms': '/tos',
  };

  static const String heroTitle = 'Caza de Casa';
  static const String heroSubtitle = 'Helping you find the best furnished apartments in Medellín';
  static const String heroImage = 'images/home.png';

  static const String featuresTitle = 'Features';
  static const String featuresSubtitle = 'Everything you need';
  static const String featuresDescription =
      'We wanted to make finding a furnished apartment in Medellín easy';

  static const List<Feature> features = [
    Feature(
      title: '"I am paying how much for cleaning?!"',
      description:
          'We charge no fees. Giving you the best prices. Time to stop paying huge amounts on "cleaning" and "service" fees.',
      icon: '💰',
    ),
    Feature(
      title: '"Where did I see that apartment?"',
      description:
          'It\'s frustrating not remembering where you had seen an apartment. Don\'t worry, give your favourite apartments a heart and easily find it in your favourites later.',
      icon: '❤️',
    ),
    Feature(
      title: '"I would love to see what is nearby"',
      description:
          'Wanting to check out what is close to the apartment? Tap on the map and we\'ll show you the area it is in.',
      icon: '📍',
    ),
    Feature(
      title: '"But does it have a sauna?"',
      description:
          'Maybe. Maybe not. If it does you will see it listed in the apartments feature section.',
      icon: '✅',
    ),
  ];

  static const String ctaTitle = 'Coming soon';
  static const String ctaSubtitle = '';
  static const String ctaDescription =
      'Join the waitlist and to be one of the first to use the app';
  static const String waitListLink = '#';
  static const String appStoreLink = '#';
  static const String appStoreImage = 'https://placehold.co/120x40?text=App+Store';
  static const String playStoreLink = '#';
  static const String playStoreImage = 'https://placehold.co/135x40?text=Google+Play';

  static const String footerText = '© 2024 Caza de Casa, All rights reserved.';

  static const String lastUpdateDate = '10th September 2024';

  // Terms of Service
  static const String tosTitle = 'Terms of Service';
  static const String tosLastUpdated = 'Last updated: $lastUpdateDate';
  static const List<TOSSection> tosSections = [
    TOSSection(
      title: 'Acceptance of Terms',
      content:
          'By accessing or using $appName, you agree to be bound by these Terms of Service and all applicable laws and regulations.',
    ),
    TOSSection(
      title: 'Use of the Service',
      content:
          'You may use our service for your personal, non-commercial use only. You must not use the service for any illegal or unauthorized purpose.',
    ),
    TOSSection(
      title: 'User Accounts',
      content:
          'You are responsible for maintaining the confidentiality of your account. You agree to accept responsibility for all activities that occur under your account.',
    ),
  ];

  // Landing page layout configuration
  static const bool useAlternativeFeatureLayout = false; // Set to true to use the new layout
}

class Feature {
  const Feature({
    required this.title,
    required this.description,
    required this.icon,
  });

  final String title;
  final String description;
  final String icon;
}



class TOSSection {
  final String title;
  final String content;

  const TOSSection({required this.title, required this.content});
}
