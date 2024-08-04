import 'package:caza_de_casa_landing_page_jaspr/components/footer.dart';
import 'package:caza_de_casa_landing_page_jaspr/components/how_does_it_work.dart';
import 'package:jaspr/jaspr.dart';

import 'components/apartment_photo.dart';
import 'components/intro.dart';

// A simple [StatelessComponent] with a [build] method.
@client
class App extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'flex flex-col bg-surface h-screen lg:min-h-screen', [
      div(classes: 'flex flex-col lg:flex-row h-full lg:h-full lg:items-center lg:justify-center', [
        const ApartmentPhoto(),
        const Intro(),
      ]),
      const HowDoesItWork(),
      const Footer(),
    ]);
  }
}
