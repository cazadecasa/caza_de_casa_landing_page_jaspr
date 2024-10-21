import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'components/footer.dart';
import 'components/header.dart';
import 'pages/landing.dart';
import 'pages/privacy.dart';
import 'pages/tos.dart';
import 'state/theme_state.dart';

class App extends StatefulComponent {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool _isDarkMode = true;

  void _toggleTheme(bool value) {
    setState(() {
      _isDarkMode = value;
    });
  }

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield ThemeState(
      isDarkMode: _isDarkMode,
      toggleTheme: _toggleTheme,
      child: div(
        classes:
            'min-h-screen ${_isDarkMode ? 'bg-gray-900 text-white' : 'bg-gray-100 text-gray-900'} flex flex-col',
        [
          Document.head(
            children: [
              script([], src: 'https://www.googletagmanager.com/gtag/js?id=G-Z6F32E3YJ4'),
              DomComponent(
                tag: 'script',
                children: [
                  Text('''
                    window.dataLayer = window.dataLayer || [];
                    function gtag(){dataLayer.push(arguments);}
                    gtag('js', new Date());
                    gtag('config', 'G-Z6F32E3YJ4');
                  '''),
                ],
              )
            ],
            meta: {
              'description':
                  'Search, find and rent the perfect place call home in Medellín Colombia. Filter out undesirable homes by price, number of bedrooms and number of bathrooms.',
              'author': 'Caza de Casa',
              'keywords': 'rent, sublet, casa, caza, apartments, homes, Medellín, Medellin',
              'og:url': 'https://cazadecasa.xyz',
              'og:type': 'website',
              'og:description':
                  'Search, find and rent the perfect place call home in Medellín Colombia. Filter out undesirable homes by price, number of bedrooms and number of bathrooms.',
              'og:image': 'https://i.imgur.com/s5R7D8r.png',
              'og:site_name': 'Caza de Casa',
              'twitter:site': '@cazadecasa',
              'twitter:url': 'https://cazadecasa.xyz',
              'twitter:description':
                  'Search, find and rent the perfect place call home in Medellín Colombia. Filter out undesirable homes by price, number of bedrooms and number of bathrooms.',
            },
          ),
          Router(
            routes: [
              ShellRoute(
                builder: (context, state, child) => Fragment(children: [
                  div(classes: 'fixed top-0 left-0 right-0 z-10', [
                    const Header(),
                  ]),
                  div(classes: 'flex-grow pt-24', [
                    child,
                  ]),
                  const Footer(),
                ]),
                routes: [
                  Route(
                      path: '/',
                      title: 'Medellín Homes to Rent | Caza de Casa',
                      builder: (context, state) => const LandingPage()),
                  Route(
                      path: '/privacy',
                      title: 'Privacy Policy | Caza de Casa',
                      builder: (context, state) => const PrivacyPolicyPage()),
                  Route(
                      path: '/tos',
                      title: 'Terms of Service | Caza de Casa',
                      builder: (context, state) => const TermsOfServicePage()),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
