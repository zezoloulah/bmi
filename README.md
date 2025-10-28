# bmi

BMI Calculator
A Flutter application for calculating Body Mass Index (BMI) with a clean and user-friendly interface. This app allows users to input their gender, height, and weight to calculate their BMI and view detailed results.

Screenshots
Onboarding Screen	Data Screen	Details Screen
alt text	alt text	alt text
Features
Onboarding Screen: Welcome screen to introduce the app.
Data Input Screen: Select gender (male/female), enter name, age, height and weight.
BMI Calculation: Automatically calculates BMI based on user inputs.
Results Screen: Displays BMI value, category (underweight, normal, overweight, obese), and health recommendations.
Clean Architecture: Organized with data, domain, and presentation layers for maintainability.
Usage
Launch the app and go through the onboarding screen.
On the data screen, select your gender, enter your height (in cm) and weight (in kg).
Tap "Calculate" to view your BMI results on the details screen.
Review your BMI category and health tips.
Dependencies
flutter_svg: For displaying SVG images.
dio: HTTP client (if used for future API integrations).
Project Structure
lib/core/: Core utilities like themes and colors.
lib/features/data/: Data layer with models and repositories.
lib/features/domain/: Domain layer with entities, repositories, and use cases.
lib/features/presentation/: UI components and screens.
assets/: Images and other assets.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
