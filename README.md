# fam_app

**fam_app** is a Flutter application demonstrating a multi-screen UI clone project.  
It showcases reusable widgets, theming, and navigation using GoRouter, and follows a modular and maintainable structure.

---

## Table of Contents

- [Features](#features)
- [Screens](#screens)
- [Getting Started](#getting-started)
- [Project Structure](#project-structure)
- [Dependencies](#dependencies)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

---

## Features

- Multi-screen navigation using **GoRouter**
- Reusable custom widgets:
  - `HomeTile` – for navigable list items
  - `ContinueButton` – full-width rounded action button
  - `FeeNote` – info container with gradient effects
- Centralized theming:
  - `AppColors` – for consistent color palette
  - `AppTextStyles` – for consistent typography
- Responsive UI and modular design
- Example of a UI clone with polished layouts

---

## Screens

The app includes the following screens:

1. **Home Screen** – Main navigation hub with a list of all screens
2. **Phone Verified Screen** (`page1`)
3. **Enter Phone Number Screen** (`page2`)
4. **Verifying SMS Screen** (`page3`)
5. **Verification Summary Screen** (`page4`)
6. **UPI Scan and Pay Screen** (`page5`)
7. **Verify Phone Screen** (`page6`)

Each screen demonstrates reusable widgets and consistent UI styling.

---

## Getting Started

These instructions will get a copy of the project up and running on your local machine for development and testing.

### Prerequisites

- Flutter SDK: [Install Flutter](https://docs.flutter.dev/get-started/install)
- Dart SDK (comes with Flutter)
- IDE: VS Code, Android Studio, or IntelliJ
- Device/emulator to run the app

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/sujin14/fam_app.git
   cd fam_app
2. **Get dependencies:**

    flutter pub get


3. **Run the app:**

    flutter run

4. **Project Structure**
    lib/
    ├── core/
    │   ├── theme/
    │   │   ├── app_colors.dart        # Centralized color palette
    │   │   └── app_text_styles.dart   # Typography styles
    ├── routes/
    │   ├── app_routes.dart            # Route paths
    │   └── app_router.dart            # GoRouter configuration
    ├── screens/
    │   ├── home/
    │   │   └── home_screen.dart
    │   ├── page1/ ... page6/          # Individual screens
    ├── widgets/
    │   ├── continue_button.dart
    │   ├── fee_note.dart
    │   └── home_tile.dart
    └── main.dart                      # Entry point

5. **Dependencies**

    flutter

    go_router
    – for declarative routing and navigation

6. **Usage**

    Navigation: Tap any item on the Home Screen to navigate to the corresponding screen.

    Continue Button: Reusable full-width button for actions.
    Theming: Use AppColors and AppTextStyles across the app for consistency.