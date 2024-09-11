import 'package:jaspr/jaspr.dart';

import '../config/app_config.dart';
import '../state/theme_state.dart';

class PrivacyPolicyPage extends StatelessComponent {
  const PrivacyPolicyPage({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    var themeState = ThemeState.of(context);

    yield div(
      classes: 'max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 py-12',
      [
        h1(
          classes: 'text-3xl font-bold ${themeState.isDarkMode ? 'text-white' : 'text-gray-900'}',
          [text(_privacyTitle)],
        ),
        p(
          classes: 'mt-2 text-sm ${themeState.isDarkMode ? 'text-gray-400' : 'text-gray-600'}',
          [text(_privacyLastUpdated)],
        ),
        div(
          classes: 'mt-8 space-y-8',
          [
            for (var section in privacySections) ...[
              if (section is PrivacySection) ...[
                div([
                  h2(
                    classes:
                        'text-xl font-semibold ${themeState.isDarkMode ? 'text-white' : 'text-gray-900'}',
                    [text(section.title)],
                  ),
                  p(
                    classes: 'mt-2 ${themeState.isDarkMode ? 'text-gray-300' : 'text-gray-600'}',
                    [text(section.content)],
                  ),
                ])
              ],
              if (section is PrivacySectionMultipleParagraphs) ...[
                div([
                  h2(
                    classes:
                        'text-xl font-semibold ${themeState.isDarkMode ? 'text-white' : 'text-gray-900'}',
                    [text(section.title)],
                  ),
                  for (String content in section.content) ...[
                    p(
                      classes: '${section.content.indexOf(content) == 0 ? 'mt-2' : ''} ${themeState.isDarkMode ? 'text-gray-300' : 'text-gray-600'}',
                      [text(content)],
                    ),
                  ]
                ])
              ]
            ],
          ],
        ),
        p(
          classes: 'mt-3 ${themeState.isDarkMode ? 'text-gray-300' : 'text-gray-600'}',
          [text(_privacyLastLine)],
        ),
      ],
    );
  }
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

const String _privacyTitle = 'Privacy Policy';
const String _privacyLastUpdated = 'Last updated: ${AppConfig.lastUpdateDate}';
const String _privacyLastLine = 'By using the App, you agree to the collection and use of '
    'information in accordance with this Privacy Policy.';
const List<PrivacyPolicyContent> privacySections = [
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
