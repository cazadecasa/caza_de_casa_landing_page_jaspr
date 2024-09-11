// The entrypoint for the **client** environment.
//
// This file is compiled to javascript and executed in the browser.

// Client-specific jaspr import.
import 'package:caza_de_casa_landing_page_jaspr/app.dart';
import 'package:jaspr/browser.dart';
// Imports the [App] component.

void main() {
  // Attaches the [App] component to the <body> of the page.
  runApp(App());
}
