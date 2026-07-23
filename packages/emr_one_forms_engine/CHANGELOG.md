## 3.1.0

- Updated font_awesome_flutter package for compatibility with Flutter 3.44.0

## 3.0.0

- Updated Flutter to 3.41.9

## 2.13.0

- Updated flutter to 3.38.3 including required package changes

## 2.12.0

- Upgraded version to 2.12.0

## 2.11.0

- Upgraded Flutter from 3.32.5 to 3.35.7

## 2.10.0

- Changes to simplify API URLs.

## 2.9.0

- Updated to Flutter 3.32.5

## 2.8.0
* Removed unused dependency on `azure_application_insights`

## 2.7.0
* Update `image_picker` from 1.0.6 -> 1.1.2
* Update `mime` from 1.0.4 -> 2.0.0

## 2.6.0
* add button in device data to push not uploaded media to server
* skip instance of another user to push to server (bug fix)

## 2.5.0
* remove all old data whenever the user open app first time in a day
* retry maximum 3 times for failed media upload

## 2.4.1
* remove old images stored in hive if more than two days
* remove submitted form instances if are stored in hive for more than two days
* remove all non submitted form instances stored in hive for more than 7 days

## 2.4.0
* Uploading media only if it's associated instance is uploaded to server before.

## 2.3.0
* Removing logs in a timer
* Trying to upload medias only for sucessfully uploaded instances

## 2.2.0
* update `emr_one_core` to 4.1.0
* remove `go_router`

## 2.1.4
* remove neverscrollphysics from tabcontroller for inkpad

## 2.1.3
* whether form is signed or not is notified by button color and icon

## 2.1.2
* Signature pad is moved to a bottom sheet to avoid scrolling while signing.

## 2.1.1
* add neverscrollphysics to tabcontroller for inkpad fix

## 2.1.0
- Removed pubspec references to syncfusion_flutter_datepicker and syncfusion_flutter_signaturepad.

## 2.0.8
* sfInkpad pad changed to EmrInkPad changes

## 2.0.4

* range counter issue fix (double value error)
* error message fix


## 2.0.0

* Updated dependencies to be compatible with Flutter 3.22.0

## 1.0.13

* Updated emr_networking dependency to version ^5.0.0
* Updated emr_networking_graphql dependency to version ^4.0.0

## 1.0.12

* Updated emr_networking dependency to version ^4.0.0
* Updated emr_networking_graphql dependency to version ^3.0.0
