import 'package:caza_de_casa_landing_page_jaspr/social_media_icons/social_media_icon.dart';
import 'package:jaspr/jaspr.dart';

const _svgData =
    'M23.931 5.298c-3.21 2.418-6.663 7.32-7.931 9.951-1.267-2.631-4.721-7.533-7.931-9.951-2.316-1.744-6.069-3.094-6.069 1.201 0 .857 .49 7.206 .778 8.237 .999 3.583 4.641 4.497 7.881 3.944-5.663 .967-7.103 4.169-3.992 7.372 5.908 6.083 8.492-1.526 9.154-3.476 .123-.36 .179-.527 .179-.379 0-.148 .057 .019 .179 .379 .662 1.949 3.245 9.558 9.154 3.476 3.111-3.203 1.671-6.405-3.992-7.372 3.24 .553 6.882-.361 7.881-3.944 .288-1.031 .778-7.38 .778-8.237 0-4.295-3.753-2.945-6.069-1.201Z';

class BlueskyIcon extends StatelessComponent {
  const BlueskyIcon({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield SocialMediaIcon(
      data: _svgData,
      ariaLabel: 'Caza de Casa Bluesky account',
      href: '#',
    );
  }
}
