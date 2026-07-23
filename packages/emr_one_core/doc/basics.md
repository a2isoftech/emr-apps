# Introduction

This package contains the core of the EO ("EMROne") framework, classes with the EO prefix
are framework classes.

The goal of this package is to provide a shared implementation of a shell application. 
The shell is responsible for:

 - Routing & Navigation
 - Themeing
 - Authentication
 - Providing a set of reusable Widgets

In addition the way this framework is setup, deployment and localisation are also provided.

The framework and modules which plug into it are all built as a single application, this is 
currently known as "EMR Apps". This application is intended to be a single web deployed
app as well as a mobile app delivered via Microsoft InTune to iOS and Android devices.

EMR Apps is intended to be a single place for our staff to goto in order to carry out
line-of-business activities. 

The framework exposes the concept of modules, which are regular Dart Packages that contain
UI and code related to a logical business unit. In order to provide structure the framework
has a routing mechanism. Each module provides its own set of routes, certain routes can be 
marked as "navigable" allowing them to appear as navigation menu items. 

Generally speaking, each module provides one or more primary routes which appear as part of
the main navigation, along with sub-routes which all resolve to screens shown in the app.

For more on how to configure routing, see [Routing].

## EOCoreApp

The main entry point for applications is the `EOCoreApp` widget. There are 2 'shell'
projects within the repo which both run some boilerplate startup code and then call
`runApp` passing `EOCoreApp` along with several parameters.

```dart
    runApp(
      EOCoreApp(
        loginController: loginController,
        userInfoService: userInfoService,
        httpClient: httpClient,
        notificationController: notificationController,
        settingsController: settingsController,
        instrumentationKey: instrumentationKey,
        routeRegistry: routeRegistry,
        appConfig: appConfig,
        initialLocation: initialUri?.path ?? appConfig.initialLocation,
        appLinks: appLinks,
      ),
    );
```

### Login Controller

Responsible for managing the user log in and log out experience.

### User Info Service

Responsible for providing common details about the currently logged in user.

### Http Client

A top level HTTP client which can be provided to descendant widgets. 

### Notification Controller

Responsible for managing in-app notifications, task updates.

### Settings Controller

Responnsible for managing settings such as user preferences.

### Instrumentation Key

Used for Application Insights telemetry.

### Route Registry

Collection of routes defined in modules and used by the app.

### App Config

Application wide settings and remote config setup.

### Initial Location

Allows override of default location.

[Routing]: Routing-topic.html