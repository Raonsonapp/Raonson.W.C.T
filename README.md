# Raonson (Flutter) — Full project scaffold

This repository contains Raonson Flutter project. It includes UI screens, services, and placeholders for many features (Reels, ChatGPT, KING AI builder, Verified Badge via in-app purchases).

## How to run locally
1. Install Flutter SDK (2.17+ recommended or stable).
2. Clone repo:
3. 3. Get dependencies:
4. (Optional) Generate native folders if missing:
5. Run on Android:11
## How to build with Codemagic
1. Create project in Codemagic and connect GitHub repository.
2. Add secure environment variables (keystore, signing files, API keys):
- ANDROID_KEYSTORE (upload keystore file)
- ANDROID_KEYSTORE_PASSWORD
- ANDROID_KEY_ALIAS
- ANDROID_KEY_PASSWORD
- APPLE_CERT or use Codemagic automatic codesign
- FIREBASE_JSON (if needed)
- OPENAI_API_KEY, etc.
3. Use provided `codemagic.yaml` workflow or configure UI to run:
4. Download artifacts in Codemagic UI.

## Notes
- Replace placeholder API keys in `lib/services/*`.
- Add real `android/` and `ios/` signing files before building release.
         Created by: EhsonEhson
