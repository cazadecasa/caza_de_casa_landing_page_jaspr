import 'package:jaspr/jaspr.dart';

class ApartmentPhoto extends StatelessComponent {
  const ApartmentPhoto({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section(classes: 'order-1 lg:order-2', [
      img(
        src: 'images/a-smaller.jpeg',
        alt: 'Medellín apartment',
        classes: 'w-full object-cover lg:h-96 lg:bg-cover lg:rounded-md',
      ),
    ]);
  }
}
