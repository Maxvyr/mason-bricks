# riverpod_module

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A brick to produce boilerplate code for new feature using riverpod state management

## Prerequisites

Installed version of [flutter_riverpod]

## Usage 🚀

```
mason make riverpod_module
```
or 
```
mason make riverpod_module --name create_account
```

Note: for better usage the output directory should be inside the lib folder.

## Variables ✨

| variable           | description                  | default | type      |
| ------------------ | ---------------------------- | ------- | --------- |
| `name`     | name of the module          | main   | `string`  |

## Output
```
├── model
│   └── create_account_model.dart
├── providers
│   └── create_account_providers.dart
├── repository
│   ├── create_account_repository.dart
├── view
│   └── create_account_view.dart
└── widget
    └── create_account_widget.dart
```

[flutter_riverpod]: https://pub.dev/packages/flutter_riverpod