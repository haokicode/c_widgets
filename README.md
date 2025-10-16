# Flutter Widget Learning Project

This project is a step-by-step journey into learning the fundamental widgets in Flutter. It started as a static application and was gradually developed into a complete, interactive, and well-structured mini-app.

## Project Evolution

### Phase 1: Digital Business Card (Static App)
Focused on layout and displaying static information (`Column`, `Row`, `Card`, `CircleAvatar`).

### Phase 2: Dice App (Interactive App)
Introduced `StatefulWidget`, `setState`, and user interaction to dynamically update the UI.

### Phase 3: Adding Notifications
- **SnackBar**: Added temporary notifications to show the dice total.
- **AlertDialog**: Added a pop-up dialog for a "Jackpot" event.

### Phase 4: History & Code Refactoring
- **ListView**: A scrollable history of all dice rolls was added.
- **Clean Code & OOP**: The app was refactored into smaller, single-responsibility widgets (`DiceView`, `HistoryListView`).

### Phase 5: UI/UX Refinement
- **FloatingActionButton**: The primary action of rolling the dice was moved to a `FloatingActionButton` (FAB) for a more standard user experience.
- **AppBar Actions**: An action was added to the `AppBar` to clear the entire history.

### Phase 6: Modern UX Patterns
- **Dismissible**: Implemented the "swipe-to-delete" pattern on history items, replacing the delete button with a more intuitive gesture.

---

## Widgets & Concepts Learned

- **Layout & Structure**:
  - `Scaffold`, `AppBar` (with `actions`), `Column`, `Row`, `SafeArea`, `SizedBox`, `Expanded`

- **Information Display**:
  - `Text` & `TextStyle`, `Icon`, `Image.asset`, `CircleAvatar`

- **Containers & Lists**:
  - `Card`, `ListTile`,
  - `ListView.builder`: For efficiently creating scrollable lists.
  - `Dismissible`: For adding swipe gestures to list items.

- **Interactive & Notifications**:
  - `FloatingActionButton`, `IconButton`, `TextButton`
  - `SnackBar`, `AlertDialog`

- **Core Concepts**:
  - **`StatelessWidget` vs `StatefulWidget`**: The core of Flutter's UI paradigm.
  - **`setState()`**: The crucial method to trigger UI rebuilds.
  - **`Key` (e.g., `UniqueKey()`)**: The importance of unique keys for widgets in dynamic lists.
  - **Child-to-Parent Communication**: Using callback functions (`Function(int)`) to pass events up the widget tree.
  - **Clean Architecture & OOP**: Single Responsibility Principle, UI Composition, and One-Way Data Flow.
  - **Widget Testing**: Writing and updating automated tests (`flutter_test`) to verify UI behavior, including user interactions like taps and drags.

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
