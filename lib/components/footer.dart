import 'package:jaspr/jaspr.dart';

class Footer extends StatelessComponent {
  const Footer({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield footer(classes: 'h-14 lg:h-12 bg-black text-white items-center align-middle content-center', [
      p(classes: 'text-center text-[0.7rem] lg:text-sm', [Text('© Caza De Casa 2024')]),
    ]);
  }
}
