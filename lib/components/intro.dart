import 'package:jaspr/jaspr.dart';

class Intro extends StatelessComponent {
  const Intro({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section(
      classes:
          'order-2 flex flex-col grow content-center justify-center lg:order-1 lg:w-[47%] lg:content-center lg:justify-center lg:items-center',
      [
        div(classes: 'flex flex-col flex-grow mb-4 px-5 text-center lg:px-0 lg:flex-grow-0', [
          div(classes: 'flex flex-col flex-grow justify-center items-center mt-3', [
            p(classes: 'text-5xl font-extralight lg:text-8xl', [text('33')]),
            p(classes: 'text-3xl font-medium tracking-wide mt-2 lg:text-5xl', [
              text('Apartments in Medellín'),
            ]),
            p(classes: 'text-sm mt-2 lg:text-2xl lg:mt-4', [
              text('We charge zero fees. You get the best prices.'),
            ])
          ]),
          div(classes: 'flex flex-col flex-grow justify-center items-center mt-4 lg:mt-12', [
            button(
              classes:
                  'btn rounded-full bg-white text-black w-[72%] h-10 text-sm lg:h-14 lg:w-1/2 lg:text-xl',
              [text('JOIN WAITLIST')],
            ),
          ]),
        ]),
      ],
    );
  }
}
