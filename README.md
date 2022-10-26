# POC Shared Worker issues with react-native-webview on IOS 16.1

- cd simple-sw-example; python -m http.server 8000

## Swift example (works without any issues)

- Open the current directory in Xcode, build and run, you should see an alert

## React Native example

- Update one of the webview examples with http://localhost:8000 and try to open in the ios simulator.
- The webview will crash with "Webview Process terminated". The window.SharedWorker is defined but once you call new SharedWorker it crashes the webview.
