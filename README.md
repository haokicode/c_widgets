# Flutter Widget Learning Project

This project is a step-by-step journey into learning the fundamental widgets in Flutter. It started as a static application and was gradually developed into an interactive app.

## Project Evolution

### Phase 1: Digital Business Card (Static App)
The first application was a simple digital business card. The main focus was on layout and displaying static information.

### Phase 2: Dice App (Interactive App)
The business card was then replaced with a dice-rolling application. This app introduced the concepts of simple state management, user interaction, and dynamic UI updates.

### Phase 3: Feature Additions
- **SnackBar**: Displays a temporary notification at the bottom of the screen showing the total value of the two dice after each roll.
- **AlertDialog**: Displays a "JACKPOT!" pop-up dialog when the user successfully rolls double sixes.

---

## Widgets Learned

- **Structure & Layout:**
  - `Scaffold`: The basic layout structure for a page.
  - `AppBar`: The application's title bar.
  - `Column`: Arranges widgets vertically.
  - `Row`: Arranges widgets horizontally.
  - `Expanded`: Fills the available space within a `Row` or `Column`.
  - `SafeArea`: Avoids UI elements from being obstructed by screen features (like a notch).
  - `SizedBox`: Creates a box with a specific size, typically used for spacing.

- **Information Display:**
  - `Text`: Displays text.
  - `TextStyle`: Styles text (font, color, size).
  - `Icon`: Displays an icon from the Material Design library.
  - `Image.asset`: Displays an image from a local project folder.
  - `CircleAvatar`: Displays an avatar/image in a circular shape.

- **Containers & Grouping:**
  - `Card`: A card with a slight shadow.
  - `ListTile`: A standard row that usually contains an icon and text.

- **Interactive & Notifications:**
  - `TextButton`: A simple button with text or another widget inside it.
  - `SnackBar`: A temporary notification at the bottom of the screen.
  - `AlertDialog`: A pop-up dialog box for important messages.

---

## Concepts Learned

- **`StatelessWidget` vs `StatefulWidget`**: The difference between static and dynamic widgets.
- **`setState()`**: The crucial method to tell Flutter to rebuild the UI when data changes.
- **Assets & `pubspec.yaml`**: How to add custom images and fonts to a project.
- **Event Handling**: Using `onPressed` to respond to user input.
- **Refactoring**: Changing the code structure (e.g., moving the `Scaffold`) to add new features without breaking existing functionality.
- **`ScaffoldMessenger`**: The modern way to display a `SnackBar`.
- **`Navigator`**: Managing the screen/dialog stack, specifically using `Navigator.of(context).pop()` to close a dialog.
- **Widget Testing**: Writing and running automated tests to verify UI functionality using `flutter_test`.

## How to Run the Application

1. Ensure you have the Flutter SDK installed.
2. Clone or download this project.
3. Open a terminal in the project directory and run:
   ```sh
   flutter pub get
   flutter run
   ```

## How to Run Tests

Open a terminal in the project directory and run:
```sh
flutter test
```
