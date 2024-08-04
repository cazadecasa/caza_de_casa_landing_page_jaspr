import 'package:jaspr/jaspr.dart';

class HowDoesItWork extends StatelessComponent {
  const HowDoesItWork({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    final size = 28;
    final textClasses = 'text-sm mt-3';
    yield section(classes: 'flex flex-col h-[28%] bg-white items-center justify-center lg:hidden', [
      p(
        classes: 'flex flex-grow text-lg font-medium items-center',
        [Text('How does it work?')],
      ),
      div(classes: 'flex flex-grow flex-row w-full', [
        div(
          classes: 'flex flex-col flex-grow items-center',
          [
            img(height: size, width: size, src: 'images/search.png'),
            p(classes: textClasses, [Text('Find a property')])
          ],
        ),
        div(
          classes: 'flex flex-col flex-grow items-center',
          [
            img(height: size, width: size, src: 'images/chat.png'),
            p(classes: textClasses, [Text('Message the owners')])
          ],
        ),
        div(
          classes: 'flex flex-col flex-grow items-center',
          [
            img(height: size, width: size, src: 'images/hand-shake.png'),
            p(classes: textClasses, [Text('Agree a deal')])
          ],
        ),
      ]),
    ]);
  }
}
