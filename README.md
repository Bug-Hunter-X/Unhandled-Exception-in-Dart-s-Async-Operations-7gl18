# Unhandled Exception in Dart's Async Operations

This repository demonstrates a common error in Dart asynchronous operations:  inadequate exception handling. The `bug.dart` file shows code that attempts to fetch data from an API but fails to robustly handle potential errors.  The `bugSolution.dart` file provides a corrected version with improved error handling.

## How to Reproduce

1. Clone this repository.
2. Run `bug.dart`.  Observe that error messages might not be handled gracefully, leading to unexpected app behavior.
3. Run `bugSolution.dart` and observe how the code properly handles both HTTP errors and JSON decoding issues.

## Problem and Solution

The main problem is improper handling of exceptions within the `async` function. The solution involves a more thorough `try-catch` block, catching specific exceptions for more informative error messages and preventing crashes.