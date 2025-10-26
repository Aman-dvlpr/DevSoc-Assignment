## Flutter ![file_type_flutter_icon_130599](https://user-images.githubusercontent.com/77982973/158015418-22478b9f-91f9-456c-9d50-0956e873ded5.png)

## What is flutter?
Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.

## Objective
Practice basic Flutter concepts by building small widgets and apps.  
Each assignment is simple and focused on one feature.

## Resources
- Flutter is a framework written in Dart Language, so before we start developing in flutter we must learn how to code in Dart. (The dart assignment is there to help you get started)
- [Dart Documentation](https://dart.dev/guides) - These are the official Dart Documentation.
- [Video Tutorial](https://www.youtube.com/watch?v=0CTj3x6jgeY) -   Dart Tutorial by Mtech Viral. You can find many other Dart tutorials on Youtube, or any other free streaming site.

- [Flutter Introduction](https://youtu.be/fq4N0hgOWzU) - A short video to give you an intro on flutter and how it works.
- [Official Flutter Website](https://flutter.dev/) - The main flutter website where you can download the Flutter SDK and follow the installation guide.
- [Flutter Documentation](https://docs.flutter.dev/) - This is the official Flutter documentation which is highly recommended if you want to learn Flutter.
- [Flutter Packages](https://pub.dev/) - If you want to install any packages within your project, you can search for them here.
- We won't be using any packages for this assignment but to add a package, copy the version number from pub.dev and paste it under dependancies in pubspec.yaml like this:
```yaml
dependencies:
  flutter:
    sdk: flutter

  http: ^1.1.0   # <-- Add your package here
```

---

### Assignment 1: Hello World App
- Create a Flutter app that shows **"Hello World"** in at the top and centre of the screen.
- Hint: Use `Scaffold`, `AppBar`, and `Center`.

---

### Assignment 2: Text Input & Display
- Add a `TextField` where the user types input.
- Add a button that, when pressed, shows the typed text on the screen.
- Hint: Use a `TextEditingController`.

---

### Assignment 3: Simple ListView
- Show a scrollable list of items (e.g., fruits).
- Each item should be in a `Card` with padding.

---

### Assignment 4: Navigation
- Create two screens.
- Add a button on the first screen that navigates to the second screen.
- Hint: Use `Navigator.push`.

---

### Bonus
- Combine **Assignment 2 (input)** and **Assignment 3 (list)**:  
  Let the user add new items to a list by typing in the `TextField`.

---
