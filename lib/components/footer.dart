import 'package:jaspr/jaspr.dart';

class Footer extends StatelessComponent {
  const Footer({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield footer(classes: 'h-32 lg:h-10 bg-black text-white items-center align-middle content-center', [
      p(classes: 'text-center', [Text('© Caza De Casa 2024')]),
    ]);
  }
}
