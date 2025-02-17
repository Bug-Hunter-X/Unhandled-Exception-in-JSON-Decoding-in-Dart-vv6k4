# Unhandled Exception in JSON Decoding in Dart

This repository demonstrates a common error in Dart applications involving JSON decoding: failure to handle potential exceptions thrown by the `jsonDecode` function.  The original code lacked proper error handling, leading to crashes if the JSON data was invalid. The solution includes robust error handling to gracefully handle malformed JSON responses.

## Bug Description

The original `fetchData` function didn't explicitly handle the `FormatException` that can occur if `jsonDecode` receives malformed JSON. This resulted in an unhandled exception and application crash.

## Solution

The improved `fetchData` function now includes a `try-catch` block to handle potential `FormatException` exceptions during JSON decoding.  A more informative error message is displayed if the JSON data is invalid, allowing the application to recover gracefully.