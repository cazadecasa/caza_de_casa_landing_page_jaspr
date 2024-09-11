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
  static const String heroImage = 'https://placehold.co/640x1386?text=App+Screenshot';

  static const String heroImage2 = 'images/home.png';

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

  // Privacy Policy
  static const String privacyTitle = 'Privacy Policy';
  static const String privacyLastUpdated = 'Last updated: $lastUpdateDate';
  static const String privacyLastLine = 'By using the App, you agree to the collection and use of '
      'information in accordance with this Privacy Policy.';
  static const List<PrivacyPolicyContent> privacySections = [
    PrivacySection(
      title: '1. Introduction',
      content: '''
            Welcome to Caza de Casa ("we," "our," or "us"). We are committed to protecting your
            personal information and your right to privacy. This Privacy Policy explains how we
            collect, use, disclose, and safeguard your information when you use our mobile
            application (the "App").
          ''',
    ),
    PrivacySection(title: '', content: '''
       Please read this Privacy Policy carefully. If you do not agree with the terms of this
            Privacy Policy, please do not access the App.
      '''),
    PrivacySection(
      title: '2. Information We Collect',
      content: 'We collect the following types of information:',
    ),
    PrivacySectionMultipleParagraphs(
      title: '2.1. Personal Information',
      content: [
        '· Full Name: We collect and store your full name to personalize your experience '
            'within the App.',
        '· Email Address: We use your email address for authentication purposes '
            'and to communicate with you about your account.'
      ],
    ),
    PrivacySection(
      title: '2.2. Usage Data',
      content: '''
          We may collect information on how the App is accessed and used ("Usage Data"). This
          may include information such as your device\'s Internet Protocol address (e.g., IP
          address), browser type, browser version, the pages of our App that you visit, the time
          and date of your visit, the time spent on those pages, and other diagnostic data.
        ''',
    ),
    PrivacySection(
      title: '2.3. Location Data',
      content: '''
          The App uses Google Maps API to display static maps. While we do not directly collect
          your location data, your use of these features may be subject to Google's privacy policy.
        ''',
    ),
    PrivacySectionMultipleParagraphs(
      title: '3. How We Use Your Information',
      content: [
        'We use the information we collect for various purposes, including:',
        '· To provide and maintain our App',
        '· To notify you about changes to our App',
        '· To allow you to participate in interactive features of our App when you choose to do so',
        '· To provide customer support',
        '· To gather analysis or valuable information so that we can improve our App',
        '· To monitor the usage of our App',
        '· To detect, prevent and address technical issues',
      ],
    ),
    PrivacySection(title: '4. Third-Party Services', content: ''),
    PrivacySection(
      title: '4.1. Google Maps API',
      content: '''
      We use Google Maps API to display static maps within our App. Your use of Google Maps 
      features is subject to Google's privacy policy, which can be found at: 
      https://policies.google.com/privacy
    ''',
    ),
    PrivacySection(
      title: '4.2. Revenue Cat',
      content: '''
     We use RevenueCat for managing in-app subscriptions. RevenueCat may collect and process 
     certain information related to your subscription. Please refer to RevenueCat's privacy 
     policy for more information:  https://www.revenuecat.com/privacy
    ''',
    ),
    PrivacySection(
      title: '4.3. Supabase',
      content: '''
      We use Supabase for One-Time Password (OTP) authentication and to store your full name. 
      Supabase's privacy practices are governed by their privacy policy, which can be found at:
      https://supabase.io/privacy
    ''',
    ),
    PrivacySection(
      title: '5. Data Security',
      content: '''
      We prioritize the security of your personal information and use commercially acceptable 
      means to protect it. However, please be aware that no method of transmission over the 
      internet or electronic storage is 100% secure, and we cannot guarantee absolute security.
    ''',
    ),
    PrivacySectionMultipleParagraphs(
      title: '6. Your Data Protection Rights',
      content: [],
    ),
    PrivacySection(
      title: '7. Children\'s Privacy',
      content: '''
      Our App is not intended for children under the age of 13. We do not knowingly collect 
      personal information from children under 13. If you are a parent or guardian and you are 
      aware that your child has provided us with personal information, please contact us so that 
      we can take necessary actions.
      ''',
    ),
    PrivacySection(
      title: '8. Changes to This Privacy Policy',
      content: '''
      We may update our Privacy Policy from time to time. We will notify you of any changes by 
      posting the new Privacy Policy on this page and updating the "Last updated" date at 
      the top of this Privacy Policy.
      ''',
    ),
    PrivacySectionMultipleParagraphs(
      title: '9. Contact Us',
      content: [
        'If you have any questions about this Privacy Policy, please contact us:',
        '- By email: hi+cazadecasa@markos.dev',
      ],
    ),
  ];

  // Terms of Service
  static const String tosTitle = 'Terms of Service';
  static const String tosLastUpdated = 'Last updated: $lastUpdateDate';
  static const List<TOSSection> tosSections = [
    TOSSection(
      title: 'Acceptance of Terms',
      content:
          'By accessing or using Your Indie App, you agree to be bound by these Terms of Service and all applicable laws and regulations.',
    ),
    TOSSection(
      title: 'Use of the Service',
      content:
          'You may use our service for your personal, non-commercial use only. You must not use the service for any illegal or unauthorized purpose.',
    ),
    TOSSection(
      title: 'User Accounts',
      content:
          'You are responsible for maintaining the confidentiality of your account and password. You agree to accept responsibility for all activities that occur under your account.',
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

abstract class PrivacyPolicyContent {}

class PrivacySection implements PrivacyPolicyContent {
  const PrivacySection({required this.title, required this.content});

  final String title;
  final String content;
}

class PrivacySectionMultipleParagraphs implements PrivacyPolicyContent {
  const PrivacySectionMultipleParagraphs({required this.title, required this.content});

  final String title;
  final List<String> content;
}

class TOSSection {
  final String title;
  final String content;

  const TOSSection({required this.title, required this.content});
}
