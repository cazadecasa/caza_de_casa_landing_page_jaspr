import 'package:jaspr/jaspr.dart';

class Intro extends StatelessComponent {
  const Intro({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section(
      classes:
          'order-2 lg:order-1 flex flex-col h-[55%] lg:w-1/2 lg:content-center lg:justify-center lg:items-center',
      [
        div(classes: 'flex flex-col flex-grow mb-4 px-16 text-center lg:px-0 lg:flex-grow-0', [
          div(classes: 'flex flex-col flex-grow justify-center items-center', [
            p(classes: 'text-9xl font-extralight lg:text-8xl', [Text('33')]),
            p(classes: 'text-7xl font-medium tracking-wider mt-4 lg:text-5xl', [
              Text('Apartments in Medellín'),
            ]),
            p(classes: 'text-4xl mt-8 lg:text-2xl', [
              Text('We charge zero fees. You get the best prices.'),
            ])
          ]),
          div(classes: 'flex flex-col flex-grow justify-center items-center', [
            button(
              classes:
                  'btn rounded-full bg-white text-black w-2/3 h-24 text-3xl lg:h-14 lg:w-1/2 lg:text-xl',
              [Text('JOIN WAITLIST')],
            ),
          ]),
        ]),
      ],
    );
  }
}
