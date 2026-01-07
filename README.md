📱 SwiftUI Demo Project – MapKit, Media & Web Links

This project is a single SwiftUI application that demonstrates core iOS features using MapKit, Media APIs, and Web technologies, all organized into separate modules and accessible from a common launch screen.


🗺️ MapKit Module

Demonstrates location services and map interactions.

Topics & Features Covered

MapKit with MKMapView

Current location (Blue dot)

Custom pin placement (Red pin on map tap)

Tap gesture handling on map

Re-center to user location button

CoreLocation (CLLocationManager)

Location permissions handling

Simulator location support

UIKit–SwiftUI bridging using UIViewRepresentable


🎞️ Media Module

Demonstrates media handling and system media features.

Topics & Features Covered

Photos Picker (PhotosPicker)

Image selection from gallery

Local image storage (Documents directory)

Camera access using UIImagePickerController

Custom camera UI placeholder (Simulator-safe)

Video playback using AVPlayer / VideoPlayer

Share content using ShareLink

Color selection using ColorPicker

UIKit–SwiftUI integration where required


🌐 Web Links Module

Demonstrates different ways to open and render web content in iOS.

Topics & Features Covered

Open external web links using openURL

In-app browser using SFSafariViewController

Web content rendering with WKWebView

Loading remote web pages

Displaying HTML content using loadHTMLString

WebKit framework integration

UIKit–SwiftUI bridging using UIViewControllerRepresentable

* App Structure

Single SwiftUI project

Modular folder structure (MapKit, Media, WebLinks)

Launch screen with navigation to each module

Clean separation of concerns

Simulator-friendly where possible
