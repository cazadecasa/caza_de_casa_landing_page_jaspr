import 'package:jaspr/server.dart';

import 'app.dart';
import 'jaspr_options.dart';
import 'styles.dart';

void main() {
  Jaspr.initializeApp(
    options: defaultJasprOptions,
  );

  runApp(Document(
    title: 'Caza de casa 🏡',
    head: [
      link(href: 'styles.css', rel: 'stylesheet')
    ],
    styles: styles,
    body: App(),
  ));
}
