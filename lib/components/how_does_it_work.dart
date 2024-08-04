import 'package:jaspr/jaspr.dart';

class HowDoesItWork extends StatelessComponent {
  const HowDoesItWork({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section(classes: 'flex flex-col h-[28%] bg-white items-center justify-center lg:hidden', [
      p(
        classes: 'flex flex-grow text-4xl font-medium items-center',
        [Text('How does it work?')],
      ),
      div(classes: 'flex flex-grow flex-row w-full', [
        div(
          classes: 'flex flex-col flex-grow items-center',
          [
            img(height: 64, width: 64, src: 'images/search.png'),
            p(classes: 'text-2xl mt-3', [Text('Find a property')])
          ],
        ),
        div(
          classes: 'flex flex-col flex-grow items-center',
          [
            img(height: 64, width: 64, src: 'images/chat.png'),
            p(classes: 'text-2xl mt-3', [Text('Message the owners')])
          ],
        ),
        div(
          classes: 'flex flex-col flex-grow items-center',
          [
            img(height: 64, width: 64, src: 'images/hand-shake.png'),
            p(classes: 'text-2xl mt-3', [Text('Agree a deal')])
          ],
        ),
      ]),
    ]);
  }
}
