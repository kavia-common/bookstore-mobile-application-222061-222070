# Bookstore Frontend (Flutter)

Mobile app for browsing available books and viewing recent transactions.

## Quick start

- Prereqs: Flutter SDK, Android/iOS tooling
- Install deps:
  - flutter pub get
- Run:
  - flutter run

The app works out of the box using in-memory mock data. No backend is required.

## Project structure

```
lib/
  main.dart                 # App entry
  models/                   # Data models (Book, TransactionRecord)
  services/                 # Api client + mock repositories + data switch
    api_client.dart         # TODO base URL, scaffold only
    data_service.dart       # Chooses API vs mock based on env
    mock_repositories.dart  # Initial in-memory data
  ui/
    home_shell.dart         # Bottom navigation shell
    theme/app_theme.dart    # Ocean Professional theme
    screens/
      books_screen.dart
      transactions_screen.dart
assets/
.env (optional)
```

## Theme

Ocean Professional (modern):
- Primary: #2563EB
- Secondary (accent): #F59E0B
- Error: #EF4444
- Background: #f9fafb
- Surface: #ffffff
- Text: #111827

Rounded cards, subtle elevation, clean typography, and smooth transitions.

## Backend configuration (optional)

The app can connect to a backend later. Until then, it uses mock repositories.

- Configure a base URL via environment:
  - Create `.env` in the project root (same directory as `pubspec.yaml`)
  - Add:
    ```
    BACKEND_BASE_URL=https://your-backend-host
    ```
- On launch, if `BACKEND_BASE_URL` is set, the app attempts REST calls:
  - GET {BASE_URL}/books
  - GET {BASE_URL}/transactions
- If the env var is missing or the request fails, the app automatically falls back to mock data.

## .env.example

```
# Optional - when absent the app uses mock data.
BACKEND_BASE_URL=
```

## Notes

- Follow Effective Dart naming and lint rules in `analysis_options.yaml`.
- Color alpha adjustments use `withAlpha()` to avoid deprecated APIs.
