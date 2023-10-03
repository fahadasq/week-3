# Week 3: Flutter Basics

## Overview

This week we will be learning the basics of Flutter. Flutter is a cross-platform mobile app development framework that allows you to write code once and deploy it to both iOS and Android. Flutter uses the Dart programming language, which is similar to Java and JavaScript.

## Learning Objectives

By the end of this week, you should be able to:

- Create a Flutter project
- Run a Flutter project on an emulator or physical device
- Use the Flutter documentation to learn about widgets
- Create a simple Flutter app with one page using stateless widgets
- file management

## Resources

Here are some resources to help you with this week's assignment:

- [Flutter - Beautiful native apps in record time](https://flutter.dev/)
- [Flutter - Get started: install](https://flutter.dev/docs/get-started/install)
- [Flutter - Get started: test drive](https://flutter.dev/docs/get-started/test-drive)
- [Flutter - Building layouts](https://flutter.dev/docs/development/ui/layout)
- [Flutter Basic Widgets](https://docs.flutter.dev/ui/widgets/basics)
- [Stateful vs Stateless](https://flutter.dev/docs/development/ui/interactive#stateful-stateless)
- [Flutter CodeLab](https://codelabs.developers.google.com/codelabs/flutter-codelab-first#0)
- [Custom Themes](https://flutter.dev/docs/cookbook/design/themes)
- [Short Video](https://www.youtube.com/watch?v=D4nhaszNW4o)

## Project Overview

You will create a simple weather app that displays the current weather conditions for a given location. This will only be front-end development, so you will not need to worry about fetching data from an API.

### 1. Setup

- Fork this repository
- Clone your forked repository to your computer
- Open the folder you just cloned in VS Code
  - Extensions to install:
    - Dart
    - Flutter
    - Awesome Flutter Snippets
    - Flutter Widget Snippets
    - Pubspec Assist
    - Material Icon Theme

### 2. Flutter Basic Widgets

- Go into the `lib` folder and open `main.dart`

#### Looking at the code

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
```

- The `main()` function is the entry point of the app. It is where the app starts executing.
- The `runApp()` function takes a widget and runs it. In this case, we are running the `MainApp` widget.
- The `MainApp` widget is a stateless widget. Stateless widgets are immutable, meaning that their properties can't change—all values are final. This widget does not have to be called `MainApp`, but it is good practice to name your widget the same as your file.
- The `MainApp` widget has a `build()` method that returns a widget. This is the widget that will be displayed when the app is launched.
- The `MainApp` widget returns a `MaterialApp` widget. The `MaterialApp` widget is a widget that provides a framework for implementing the basic material design layout of your app.

#### Understanding MaterialApp

```dart
MaterialApp(
    title: 'Weather App',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const Scaffold(),
    debugShowCheckedModeBanner: false,
);
```

- The `MaterialApp` widget is the root widget of your app. It is what allows you to use Material Design components in your app.
- The `MaterialApp` widget has a `home` property that takes a widget. This is the widget that will be displayed when the app is launched.
- The `MaterialApp` widget also has a `theme` property that takes a `ThemeData` object. This is where you can customize the theme of your app.
- The `MaterialApp` widget also has a `title` property that takes a string. This is the title of your app that will be displayed in the app switcher.
- The `MaterialApp` widget also has a `debugShowCheckedModeBanner` property that takes a boolean. This is whether or not you want the debug banner to be displayed in the top right corner of your app.

#### Understanding Scaffold

- The `Scaffold` widget is a widget that provides a framework for implementing the basic material design layout of your app.
- The `Scaffold` widget has a `body` property that takes a widget. This is the widget that will be displayed in the body of the scaffold.
- The `Scaffold` widget also has an `appBar` property that takes a `AppBar` widget. This is the widget that will be displayed in the app bar of the scaffold.
- The `Scaffold` widget also has a `floatingActionButton` property that takes a widget. This is the widget that will be displayed in the bottom right corner of the scaffold.
