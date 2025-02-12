# Flutter Riverpod Sample Application

This is a simple Flutter application built to explore Riverpod for state management. The project demonstrates how to manage a cart system dynamically using Riverpod providers, notifiers, and code generation with Build Runner.

## Features

- Manually added products for demonstration.
- Add items to the cart.
- Remove items from the cart.
- Dynamically update cart count and total price.
- Utilizes Riverpod for efficient state management.
- Implements Riverpod code generation with Build Runner.

## Getting Started

### Prerequisites

Ensure you have the following installed:
- Flutter SDK ([Download Here](https://flutter.dev/docs/get-started/install))
- Dart
- Visual Studio Code or Android Studio (Optional but recommended)

### Installation

1. Clone the repository:
   ```sh
   git clone <repository_url>
   cd <project_directory>
   ```
2. Clean and install dependencies:
   ```sh
   flutter pub clean
   flutter pub get
   ```
3. Run the project:
   ```sh
   flutter run
   ```

## Riverpod Implementation

This project makes use of Riverpod's `StateNotifier` and `Provider` to manage the cart system efficiently.

### Key Components
- **Product Model:** Represents a product with properties like name, price, and ID.
- **Cart Notifier:** Manages the addition, removal, and total price calculations.
- **Providers:** Used to store and access product lists and cart details.
- **Build Runner:** Generates necessary Riverpod code for providers.

## Running Build Runner

To generate Riverpod code, run the following command:
```sh
flutter pub run build_runner build --delete-conflicting-outputs
```

## Dependencies Used

- `flutter_riverpod`: State management
- `build_runner`: Code generation
- `freezed`: Immutable data classes (if used)

## Contributing

Feel free to fork the repository and create pull requests for improvements.

## License

This project is licensed under the MIT License.

