# Flutter Widget Learning Project

This project is a step-by-step journey into learning the fundamental widgets in Flutter. It started as a static application and was gradually developed into an interactive, well-structured app.

## Project Evolution

### Phase 1: Digital Business Card (Static App)
The first application was a simple digital business card. The main focus was on layout and displaying static information.

### Phase 2: Dice App (Interactive App)
The business card was then replaced with a dice-rolling application. This app introduced the concepts of simple state management, user interaction, and dynamic UI updates.

### Phase 3: Adding Notifications
- **SnackBar**: Displays a temporary notification at the bottom of the screen showing the total value of the two dice after each roll.
- **AlertDialog**: Displays a "JACKPOT!" pop-up dialog when the user successfully rolls double sixes.

### Phase 4: History & Code Refactoring
- **ListView**: A scrollable list was added to show the history of all dice rolls.
- **Clean Code & OOP**: The entire application was refactored into smaller, single-responsibility widgets (`DiceView`, `HistoryListView`) to follow Clean Code and Object-Oriented Programming principles.

---

## Widgets Learned

- **Structure & Layout:**
  - `Scaffold`, `AppBar`, `Column`, `Row`, `SafeArea`, `SizedBox`

- **Information Display:**
  - `Text` & `TextStyle`, `Icon`, `Image.asset`, `CircleAvatar`

- **Containers & Lists:**
  - `Card`, `ListTile`
  - `ListView.builder`: To efficiently create a scrollable list of items.
  - `Expanded`: To control the sizing of children within a `Column` or `Row`, especially for lists.

- **Interactive & Notifications:**
  - `TextButton`, `SnackBar`, `AlertDialog`

---

## Concepts Learned

- **`StatelessWidget` vs `StatefulWidget`**: The core of Flutter's UI paradigm.
- **`setState()`**: The crucial method to tell Flutter to rebuild the UI when data changes.
- **Assets & `pubspec.yaml`**: How to add custom images and fonts to a project.
- **Event Handling**: Using `onPressed` to respond to user input.
- **Clean Architecture & OOP**:
  - **Single Responsibility Principle**: Refactoring a large widget into smaller, focused widgets (e.g., `DiceView`, `HistoryListView`).
  - **UI Composition**: Building a complex UI by composing simple, reusable widgets.
  - **One-Way Data Flow**: State is held in a top-level widget and flows down to child widgets, while events flow up via callbacks.
- **`ScaffoldMessenger` & `Navigator`**: Modern ways to handle notifications and dialogs.
- **Widget Testing**: Writing and updating automated tests to verify UI functionality and behavior as the app evolves.

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
