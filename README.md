# KeyboardNotificationBug
Bug in iOS SDK (iOS 11 Beta)

## Area:
UIKit

## Summary:
When the notification UIKeyboardWillShowNotification is received the userInfo object contains incorrect value - it has NSRect instead of CGRectValue.

## Steps to reproduce:
1. Launch the project.
2. See logs.

## Expected Results:
Dictionary contains CGRectValue for the key UIKeyboardFrameBeginUserInfoKey.

## Version:
iOS 11 beta 9.
