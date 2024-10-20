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
                  [
                    // facebook
                    a(
                      [
                        svg(
                          classes: 'h-6 w-6',
                          attributes: {
                            'fill': 'currentColor',
                            'color': 'white',
                            'width': '32',
                            'height': '32',
                            'viewBox': '0 0 32 32',
                          },
                          [
                            DomComponent(
                              tag: 'path',
                              attributes: {
                                'stroke-width': '2',
                                'd':
                                'M16 2c-7.732 0-14 6.268-14 14 0 6.566 4.52 12.075 10.618 13.588v-9.31h-2.887v-4.278h2.887v-1.843c0-4.765 2.156-6.974 6.835-6.974 .887 0 2.417 .174 3.043 .348v3.878c-.33-.035-.904-.052-1.617-.052-2.296 0-3.183 .87-3.183 3.13v1.513h4.573l-.786 4.278h-3.787v9.619c6.932-.837 12.304-6.74 12.304-13.897 0-7.732-6.268-14-14-14Z',
                              },
                            ),
                          ],
                        )
                      ],
                      href: 'https://www.facebook.com/profile.php?id=61566610873540',
                      target: Target.blank,
                      classes: 'mx-1.5',
                    ),
                    a(
                      [
                        svg(
                          classes: 'h-6 w-6',
                          attributes: {
                            'fill': 'currentColor',
                            'color': 'white',
                            'width': '32',
                            'height': '32',
                            'viewBox': '0 0 32 32',
                          },
                          [
                            DomComponent(
                              tag: 'path',
                              attributes: {
                                'stroke-width': '2',
                                'd':
                                'M22.7 14.977c-.121-.058-.243-.113-.367-.167-.216-3.982-2.392-6.262-6.046-6.285-.017 0-.033 0-.05 0-2.185 0-4.003 .933-5.122 2.63l2.009 1.378c.836-1.268 2.147-1.538 3.113-1.538 .011 0 .022 0 .033 0 1.203 .008 2.111 .357 2.698 1.04 .428 .497 .714 1.183 .855 2.049-1.067-.181-2.22-.237-3.453-.166-3.474 .2-5.707 2.226-5.557 5.041 .076 1.428 .788 2.656 2.003 3.459 1.028 .678 2.351 1.01 3.727 .935 1.817-.1 3.242-.793 4.236-2.06 .755-.963 1.233-2.21 1.444-3.781 .866 .523 1.507 1.21 1.862 2.037 .603 1.405 .638 3.714-1.246 5.596-1.651 1.649-3.635 2.363-6.634 2.385-3.326-.025-5.842-1.091-7.478-3.171-1.532-1.947-2.323-4.759-2.353-8.359 .03-3.599 .821-6.412 2.353-8.359 1.636-2.079 4.151-3.146 7.478-3.171 3.35 .025 5.91 1.097 7.608 3.186 .833 1.025 1.461 2.313 1.874 3.815l2.355-.628c-.502-1.849-1.291-3.443-2.365-4.764-2.177-2.679-5.361-4.051-9.464-4.08h-.016c-4.094 .028-7.243 1.406-9.358 4.095-1.882 2.393-2.853 5.722-2.886 9.895v.01s0 .01 0 .01c.033 4.173 1.004 7.503 2.886 9.895 2.115 2.689 5.264 4.067 9.358 4.095h.016c3.64-.025 6.206-.978 8.32-3.09 2.765-2.763 2.682-6.226 1.771-8.352-.654-1.525-1.901-2.763-3.605-3.581Zm-6.285 5.909c-1.522 .086-3.104-.598-3.182-2.061-.058-1.085 .772-2.296 3.276-2.441 .287-.017 .568-.025 .844-.025 .909 0 1.76 .088 2.533 .257-.288 3.602-1.98 4.187-3.471 4.269Z',
                              },
                            ),
                          ],
                        )
                      ],
                      href: '#',
                      classes: 'mx-1.5',
                    ),
                    a(
                      [
                        svg(
                          classes: 'h-6 w-6',
                          attributes: {
                            'fill': 'currentColor',
                            'color': 'white',
                            'width': '32',
                            'height': '32',
                            'viewBox': '0 0 32 32',
                          },
                          [
                            DomComponent(
                              tag: 'path',
                              attributes: {
                                'stroke-width': '2',
                                'd':
                                    'M18.42 14.009L27.891 3h-2.244l-8.224 9.559L10.855 3H3.28l9.932 14.455L3.28 29h2.244l8.684-10.095 6.936 10.095h7.576l-10.301-14.991h0Zm-3.074 3.573l-1.006-1.439L6.333 4.69h3.447l6.462 9.243 1.006 1.439 8.4 12.015h-3.447l-6.854-9.804h0Z',
                              },
                            ),
                          ],
                        )
                      ],
                      href: 'https://twitter.com/cazadecasa',
                      target: Target.blank,
                      classes: 'mx-1.5',
                    ),
                    a(
                      [
                        svg(
                          classes: 'h-6 w-6',
                          attributes: {
                            'fill': 'currentColor',
                            'color': 'white',
                            'width': '32',
                            'height': '32',
                            'viewBox': '0 0 32 32',
                          },
                          [
                            DomComponent(
                              tag: 'path',
                              attributes: {
                                'stroke-width': '2',
                                'd':
                                'M23.931 5.298c-3.21 2.418-6.663 7.32-7.931 9.951-1.267-2.631-4.721-7.533-7.931-9.951-2.316-1.744-6.069-3.094-6.069 1.201 0 .857 .49 7.206 .778 8.237 .999 3.583 4.641 4.497 7.881 3.944-5.663 .967-7.103 4.169-3.992 7.372 5.908 6.083 8.492-1.526 9.154-3.476 .123-.36 .179-.527 .179-.379 0-.148 .057 .019 .179 .379 .662 1.949 3.245 9.558 9.154 3.476 3.111-3.203 1.671-6.405-3.992-7.372 3.24 .553 6.882-.361 7.881-3.944 .288-1.031 .778-7.38 .778-8.237 0-4.295-3.753-2.945-6.069-1.201Z',
                              },
                            ),
                          ],
                        )
                      ],
                      href: '#',
                      classes: 'mx-1.5',
                    ),
                    a(
                      [
                        svg(
                          classes: 'h-6 w-6',
                          attributes: {
                            'fill': 'currentColor',
                            'color': 'white',
                            'width': '32',
                            'height': '32',
                            'viewBox': '0 0 32 32',
                          },
                          [
                            DomComponent(
                              tag: 'path',
                              attributes: {
                                'stroke-width': '2',
                                'd':
                                'M24.562 7.613c-1.508-.983-2.597-2.557-2.936-4.391-.073-.396-.114-.804-.114-1.221h-4.814l-.008 19.292c-.081 2.16-1.859 3.894-4.039 3.894-.677 0-1.315-.169-1.877-.465-1.288-.678-2.169-2.028-2.169-3.582 0-2.231 1.815-4.047 4.046-4.047 .417 0 .816 .069 1.194 .187v-4.914c-.391-.053-.788-.087-1.194-.087-4.886 0-8.86 3.975-8.86 8.86 0 2.998 1.498 5.65 3.783 7.254 1.439 1.01 3.19 1.606 5.078 1.606 4.886 0 8.86-3.975 8.86-8.86V11.357c1.888 1.355 4.201 2.154 6.697 2.154v-4.814c-1.345 0-2.597-.4-3.647-1.085Z',
                              },
                            ),
                          ],
                        )
                      ],
                      href: '#',
                      classes: 'mx-1.5',
                    )
                  ],
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
