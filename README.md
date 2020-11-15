# HZSImageCompression

[![CI Status](https://img.shields.io/travis/1498522607@qq.com/HZSImageCompression.svg?style=flat)](https://travis-ci.org/1498522607@qq.com/HZSImageCompression)
[![Version](https://img.shields.io/cocoapods/v/HZSImageCompression.svg?style=flat)](https://cocoapods.org/pods/HZSImageCompression)
[![License](https://img.shields.io/cocoapods/l/HZSImageCompression.svg?style=flat)](https://cocoapods.org/pods/HZSImageCompression)
[![Platform](https://img.shields.io/cocoapods/p/HZSImageCompression.svg?style=flat)](https://cocoapods.org/pods/HZSImageCompression)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.
```ruby
/**
 图片压缩，先进行质量压缩仍然达不到标准则继续尺寸压缩 1m = 1 * 1024 * 1024 字节,会压缩到90%-100%，如果达不到就进行尺寸压缩
 @param maxLength 目标最大字节
 @return 压缩后的data
 */
-(NSData *)dataWithCompressMaxLength:(NSUInteger)maxLength;

```

## Requirements

## Installation

HZSImageCompression is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'HZSImageCompression'
```

## Author

黄祖树, 1498522607@qq.com

## License

HZSImageCompression is available under the MIT license. See the LICENSE file for more info.
