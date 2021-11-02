# contact_selector

A Flutter plugin for picking a contact from the address book.

## Getting Started

This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/),
With this plugin a Flutter app can ask its user to select a contact from his/her address book. The information associated with the contact is returned to the app.

This plugin uses the operating system's native UI for selecting contacts and does not require any special permissions from the user.

Currently, the plugin only supports picking phone numbers. However, it should be easy to extend the plugin to request other properties from a contact (e.g. addresses) or to obtain the entire record of a contact (PRs are welcome).

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Using the plugin

Follow the instructions in the [Installing](https://pub.dartlang.org/packages/contact_selector#pub-pkg-tab-installing) tab on pub.

After that, instantiate `ContactSelector` in your Flutter app and call `selectContact` on it to bring up the UI for selecting a contact. The function returns with the selected `Contact` object once the user has made a choice (or `null` if the user didn't select anything).

See `example/lib/main.dart` for an actual usage example.
