# Mobile Test iOS Developer - The Grint

_In this repository you will find the iOS developer test made for The Grint_

_By Miguel Angel Valcarcel Menivelso_

## Screenshots

<img src="https://github.com/mivalme/The-Reddit/assets/33386326/6b2fc81f-55ad-417f-91e0-d02556b7b39a" width="250"> <img src="https://github.com/mivalme/The-Reddit/assets/33386326/d2f49c29-ca23-4463-ae8e-e0fa447ab88d" width="250"> <img src="https://github.com/mivalme/The-Reddit/assets/33386326/9fa96742-0f17-41b2-9704-97190617d8f4" width="250">




## Let's start 🚀

_These instructions allow you to obtain a copy of the project in operation on your local machine to be able to test._

### Requirements 📋

_CocoaPods Installed_

### Setup 🔧

_Clone this repository on your local machine_

_Open the terminal, and go to the project path_

```
cd projectPath
```

_Install the project pods_

```
pod install
```
_Go to the folder where you cloned the project and open **Posts App.xcworkspace**_

## How is the app built? ⚙️

### Deployment Info ⌨️

* iOS Deployment Target:  _iOS 16.4_
* Targeted Device Family:  _iPhone_
* Swift Language Version:  _Swift implementing UIKit for interfaces_

### Architecture ⌨️

_The app was developed under the VIPER architecture because it:_

* _Offers high scalability_
* _Divide the application components according to their role_
* _Ease of adding new features_
* _Mark responsibilities clearly_
* _Makes unit test development easier as UI logic separates from business logic_
* _Apply SOLID principles_

### Unit Testing ⌨️

_The unit test was developed implementing dependencies injection design pattern. The files tested for each module are presenter and interactor._

### Third-party library ⌨️

__Alamofire__

_Alamofire is a networking library written in Swift. You use it to make HTTP(S) requests on iOS, macOS and other Apple platforms._

__Lottie__

_Lottie is a native iOS, Android, and React library that processes After Effects animations in real time, 
allowing applications to use animations as easily as they use static images. 
So it has become a benchmark for including animations in native applications. 
In addition, the files it processes to run the animation are very light (.json)._

__SDWebImage__

_This library provides an async image downloader with cache support._

## Author ✒️

* **Miguel Angel Valcarcel Mendivelso (mivalme@gmail.com)** - *Development and implementation*
