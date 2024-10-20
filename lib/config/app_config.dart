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
  static const String heroSubtitle = 'Helping you find a place to call home in Medellín';
  static const String heroImage = 'images/home.png';

  static const String featuresTitle = '';
  static const String featuresSubtitle = 'Why choose Caza de Casa?';
  static const String featuresDescription =
      '';

  static const List<Feature> features = [
    Feature(
      title: 'Pay Less',
      description:
          'We add 0% on top of the total. Other platforms add up to an additional 15% on top of the total to take for themselves.',
      icon: '💰',
    ),
    Feature(
      title: 'Favourites',
      description:
          'Seen a home you like the look of? Tap the heart icon to add a home to your favourites so you can come back to it later.',
      icon: '❤️',
    ),
    Feature(
      title: 'Preferred Features',
      description:
          'Add your feature preferences for your ideal home and see at a glance which features are included with '
              'each listing.',
      icon: '🏡',
    ),
    Feature(
      title: 'Filters',
      description:
          'Find the homes within your price range. Search for the homes which have the right amount of bedrooms and bathrooms.',
      icon: '🏷️',
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
