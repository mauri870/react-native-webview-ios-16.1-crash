# POC Shared Worker issues with IOS 16.1 webview

- Start a simple http server with shared workers `cd simple-sw-example; python -m http.server 8000`
- Open the current directory in Xcode 14.0 (current stable), build and run against IOS 16.0, everything should work as expected
- Download xcode 14.1 rc2 (current unstable), build and run against IOS 16.1, the webview will crash.

## React Native example

- Update one of the webview examples with http://localhost:8000 and try to open in the ios simulator, same thing, 16.0 works but 16.1 crashes.
- The webview will crash with "Webview Process terminated" in ios 16.1


The window.SharedWorker is defined so you expect it to be available but once you call `new SharedWorker` it crashes the native webview process on IOS 16.1, but works without any issue in 16.0.
