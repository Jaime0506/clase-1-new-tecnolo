# Project Blueprint

## Overview

This document outlines the structure and implementation details of the Flutter counter application.

## Current State

The application is a simple counter with a floating action button to increment the counter.

## Requested Change

The user wants to add a reset button to the counter and refactor the code to separate components into different files.

## Plan

1.  **Create `blueprint.md`:** Document the project and the plan for the requested changes.
2.  **Create `lib/screens` directory:** To store screen-level widgets.
3.  **Create `lib/widgets` directory:** For reusable widgets.
4.  **Create `lib/screens/home_screen.dart`:** Move the `MyHomePage` widget to this file.
5.  **Create `lib/widgets/counter_widget.dart`:** Create a new stateful widget to encapsulate the counter logic and UI, including the increment and reset buttons.
6.  **Update `lib/main.dart`:** Update the main file to use the new `HomeScreen`.
