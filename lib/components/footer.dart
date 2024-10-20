import 'package:caza_de_casa_landing_page_jaspr/social_media_icons/bluesky_icon.dart';
import 'package:caza_de_casa_landing_page_jaspr/social_media_icons/facebook_icon.dart';
import 'package:caza_de_casa_landing_page_jaspr/social_media_icons/threads_icon.dart';
import 'package:caza_de_casa_landing_page_jaspr/social_media_icons/tiktok_icon.dart';
import 'package:caza_de_casa_landing_page_jaspr/social_media_icons/twitter_icon.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import '../config/app_config.dart';
import '../state/theme_state.dart';

class Footer extends StatelessComponent {
  const Footer({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    final themeState = ThemeState.of(context);
    final appLogo = themeState.isDarkMode ? AppConfig.appLogo : AppConfig.appLogoLight;
    final svgAttributes = {
      'fill': 'currentColor',
      'color': 'white',
      'width': '32',
      'height': '32',
      'viewBox': '0 0 32 32',
    };

    final socialMediaIconClasses = 'mx-1.5';

    yield footer(
      classes: themeState.isDarkMode ? 'bg-gray-800 text-gray-300' : 'bg-gray-200 text-gray-700',
      [
        div(
          classes: 'max-w-7xl mx-auto py-8 px-4 sm:px-6 lg:px-8',
          [
            div(
              classes: 'flex flex-col md:flex-row justify-between items-center',
              [
                // Logo and company name
                div(
                  classes: 'flex items-center mb-4 md:mb-0',
                  [
                    img(
                      src: appLogo,
                      alt: 'Company logo',
                      classes: 'h-8 w-8 mr-2',
                    ),
                    span(
                      classes:
                          'font-semibold text-lg ml-2 mt-1 ${themeState.isDarkMode ? 'text-white' : 'text-gray-900'}',
                      [text(AppConfig.appName)],
                    ),
                  ],
                ),
                // social media
                div(
                  classes: 'flex items-center mb-4 md:mb-0',
                  [FacebookIcon(), ThreadsIcon(), TwitterIcon(), BlueskyIcon(), TikTokIcon()],
                ),
                // Navigation links
                nav(
                  classes: 'flex flex-wrap justify-center space-x-4',
                  [
                    for (var entry in AppConfig.navLinks.entries)
                      Link(to: entry.value, child: text(entry.key)),
                  ],
                ),
              ],
            ),
            div(
              classes:
                  'mt-8 border-t ${themeState.isDarkMode ? 'border-gray-700' : 'border-gray-300'} pt-8 text-center',
              [
                p(
                  classes:
                      themeState.isDarkMode ? 'text-sm text-gray-400' : 'text-sm text-gray-500',
                  [text(AppConfig.footerText)],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
