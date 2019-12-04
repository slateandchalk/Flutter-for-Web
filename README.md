# Flutter-for-Web
Made by Google logo
Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.

###### Create a new app with web support
To create a new app that includes web support (in addition to mobile support), run the following, substituting myapp with the name of your project:

> ``` flutter create myapp ```

###### Run the web app
To run the app on the web, enter the following from the top of the package:

> ``` flutter run -d chrome ```

If there aren’t any other connected devices, the -d chrome is optional.

###### Generate a release build
Run the following, from the top of the project:

> ``` flutter build web ```

A release build uses dart2js (instead of the development compiler) to produce a single JavaScript file. This can be run with the release flag or built using flutter build web. This outputs files at build/web, including the assets, which need to be served together.

## Use a custom font - Design
Flutter works with custom fonts and you can apply a custom font across an entire app or to individual widgets.

Use a custom font - Design | Flutter for Web - https://youtu.be/_beQyq-nzxs

### Navigate to a new screen and back - Navigation
Most apps contain several screens for displaying different types of information. For example, an app might have a screen that displays products. When the user taps the image of a product, a new screen displays details about the product.

Navigate to a new screen and back - Navigation | Flutter for Web - https://youtu.be/Vl-z6OCoX0k

### Navigate with named routes - Navigation
In the Navigate to a new screen and back recipe, you learned how to navigate to a new screen by creating a new route and pushing it to the Navigator.

However, if you need to navigate to the same screen in many parts of your app, this approach can result in code duplication. The solution is to define a named route, and use the named route for navigation.

Navigate with named routes - Navigation | Flutter for Web - https://youtu.be/9CTa05u8v6w

### Animate a page route transition - Animation
A design language, such as Material, defines standard behaviors when transitioning between routes (or screens). Sometimes, though, a custom transition between screens can make an app more unique. To help, PageRouteBuilder provides an Animation object. This Animation can be used with Tween and Curve objects to customize the transition animation.

Animate a page route transition - Animation | Flutter for Web - https://youtu.be/T5jlkRxY0hc

### Display images from the internet - Images
Displaying images is fundamental for most mobile apps. Flutter provides the Image widget to display different types of images.

Display images from the internet - Images | Flutter for Web - https://youtu.be/tU1vdD5ZCi8

### Create a grid list - Lists
The simplest way to get started using grids is by using the GridView.count() constructor, because it allows you to specify how many rows or columns you’d like.

Create a grid list - Lists | Flutter for Web - https://youtu.be/itF6haPIoFM

### Fetch data from the internet - Networking

Fetching data from the internet is necessary for most apps. Luckily, Dart and Flutter provide tools, such as the http package, for this type of work.

Fetch data from the internet - Networking | Flutter for Web - https://youtu.be/tJZfQLR_Djg

### Bottom Navigation Bar - Libraries

A material widget that's displayed at the bottom of an app for selecting among a small number of views, typically between three and five.

Bottom Navigation Bar - Libraries | Flutter for Web - https://youtu.be/RDURA7p46XE

### Add a Drawer to a screen - Classes
A material design panel that slides in horizontally from the edge of a Scaffold to show navigation links in an application.
Drawers are typically used with the Scaffold.drawer property. The child of the drawer is usually a ListView whose first child is a DrawerHeader that displays status information about the current user. The remaining drawer children are often constructed with ListTiles, often concluding with an AboutListTile.

Add a Drawer to a screen - Classes | Flutter for Web - https://youtu.be/Eb3J0s7L7WM

### Add a Popup Menu Button in an App Bar - Classes
An app bar consists of a toolbar and potentially other widgets, such as a TabBar and a FlexibleSpaceBar. App bars typically expose one or more common actions with IconButtons which are optionally followed by a PopupMenuButton for less common operations (sometimes called the "overflow menu").

App bars are typically used in the Scaffold.appBar property, which places the app bar as a fixed-height widget at the top of the screen. For a scrollable app bar, see SliverAppBar, which embeds an AppBar in a sliver for use in a CustomScrollView.

When not used as Scaffold.appBar, or when wrapped in a Hero, place the app bar in a MediaQuery to take care of the padding around the content of the app bar if needed, as the padding will not be handled by Scaffold.

Add a Popup Menu Button in an App Bar - Classes | Flutter for Web - https://youtu.be/sDgX0fuX5k8
"# Flutter-for-Web" 
