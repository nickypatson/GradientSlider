# GradientSlider

[![CI Status](http://img.shields.io/travis/nickypatson/GradientSlider.svg?style=flat)](https://travis-ci.org/nickypatson/GradientSlider)
[![Version](https://img.shields.io/cocoapods/v/GradientSlider.svg?style=flat)](http://cocoapods.org/pods/GradientSlider)
[![License](https://img.shields.io/cocoapods/l/GradientSlider.svg?style=flat)](http://cocoapods.org/pods/GradientSlider)
[![Platform](https://img.shields.io/cocoapods/p/GradientSlider.svg?style=flat)](http://cocoapods.org/pods/GradientSlider)



# GraidentSlider

Graident Uicontrol Slider 

## Description

Graident layer slider using UIView

## ScreenShot

![Alt text](/gif.gif?raw=true "Optional Title")

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.


## How To Use

```
coolSlider.defaultValue = 0.1;

coolSlider.actionBlock={slider,newvalue in

}
```


## How to use

First of all import library in your project

```swift
import GradientSlider
```  

```
coolSlider.defaultValue = 0.1;

coolSlider.actionBlock={slider,newvalue in

}
```

## Requirements

```
* Swift 3.0.1
* XCode 8.3.1
* iOS 8.0 (Min SDK)
```

## Installation with CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries like SwiftMultiSelect in your projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

#### Podfile

To integrate SwiftMultiSelect into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'

target 'TargetName' do
  use_frameworks!
  pod 'GradientSlider’, :git=> ‘https://github.com/nickypatson/GradientSlider’
end
```

Then, run the following command:

```bash
$ pod install
```

## Author

Nicky Patson

[HomePage](http://about.me/nickypatson)

<mail.nickypatson@gmail.com>


## License

GradientSlider is available under the MIT license. See the LICENSE file for more info.
