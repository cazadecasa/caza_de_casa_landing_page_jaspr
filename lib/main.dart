import 'package:jaspr/server.dart';

import 'components/apartment_photo.dart';
import 'components/footer.dart';
import 'components/how_does_it_work.dart';
import 'components/intro.dart';
import 'jaspr_options.dart';

void main() {
  Jaspr.initializeApp();

  runApp(DomComponent(
    tag: 'html',
    attributes: {
      'lang': 'en',
    },
    children: [
      DomComponent(
        tag: 'head',
        children: [
          DomComponent(tag: 'meta', attributes: {
            'charset': 'UTF-8',
          }),
          DomComponent(tag: 'meta', attributes: {
            'name': 'description',
            'content': 'Search for your home away from home in Medellín Colombia',
            'name': 'keywords',
            'content': 'Medellín, Rent, Apartment, Colombia, Columbia',
            'name': 'viewport',
            'content': 'width=device-width, initial-scale=1.0',
          }),
          DomComponent(tag: 'link', attributes: {
            'href': 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css',
            'rel': 'stylesheet',
          }),
          link(href: 'styles.css', rel: 'stylesheet'),
          DomComponent(tag: 'title', child: Text('Casa de Casa')),
        ],
      ),
      body(
        classes: 'flex flex-col bg-surface h-screen lg:min-h-screen',
        [
          div(
            classes:
                'flex flex-col lg:flex-row h-[75%] flex-grow lg:h-full lg:items-center lg:justify-center',
            [
              const ApartmentPhoto(),
              const Intro(),
            ],
          ),
          const HowDoesItWork(),
          const Footer()
        ],
      ),
    ],
  ));
}
