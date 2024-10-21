import 'package:caza_de_casa_landing_page_jaspr/state/theme_state.dart';
import 'package:jaspr/jaspr.dart';

class SocialMediaIcon extends StatelessComponent {
  const SocialMediaIcon({super.key, required this.data,required this.ariaLabel, this.href});

  final String data;
  final String ariaLabel;
  final String? href;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    final themeState = ThemeState.of(context);
    final iconColor = themeState.isDarkMode ? 'white' : 'black';
    final attributes = {
      'fill': 'currentColor',
      'color': iconColor,
      'width': '32',
      'height': '32',
      'viewBox': '0 0 32 32',
    };

    final classes = 'mx-1.5';

    yield a(
      [
        svg(
          classes: 'h-6 w-6',
          attributes: attributes,
          [
            DomComponent(
              tag: 'path',
              attributes: {
                'stroke-width': '2',
                'd':
                data,
              },
            ),
          ],
        )
      ],
      href: href ?? '#',
      attributes: {'aria-label': ariaLabel},
      target: Target.blank,
      classes: classes,
    );
  }
}
