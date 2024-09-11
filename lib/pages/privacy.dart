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
          [text(AppConfig.privacyTitle)],
        ),
        p(
          classes: 'mt-2 text-sm ${themeState.isDarkMode ? 'text-gray-400' : 'text-gray-600'}',
          [text(AppConfig.privacyLastUpdated)],
        ),
        div(
          classes: 'mt-8 space-y-8',
          [
            for (var section in AppConfig.privacySections) ...[
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
          [text(AppConfig.privacyLastLine)],
        ),
      ],
    );
  }
}
