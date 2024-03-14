# Swifty Open Chinese Convert

[![Github CI Status](https://github.com/ddddxxx/SwiftyOpenCC/workflows/CI/badge.svg)](https://github.com/ddddxxx/SwiftyOpenCC/actions)
![platforms](https://img.shields.io/badge/platforms-Linux%20%7C%20macOS%20%7C%20iOS%20%7C%20tvOS%20%7C%20watchOS-lightgrey.svg)
[![codebeat badge](https://codebeat.co/badges/39f17620-4f1c-4a46-b3f9-8f5b248ac28f)](https://codebeat.co/projects/github-com-ddddxxx-swiftyopencc-master)

Swift port of [Open Chinese Convert](https://github.com/BYVoid/OpenCC)

## Requirements

- macOS 10.10+ / iOS 8.0+ / tvOS 9.0+ / watchOS 2.0+
- Swift 5.0

## Swift Package Manager
```swift
//导入
.package(url: "https://github.com/ctsfork/SwiftyOpenCC.git", from: "1.1.7"),

//Targets 
.product(name: "OpenCC", package: "SwiftyOpenCC"),//Package Product:OpenCC
```

## Usage

### Quick Start

```swift
import SwiftyOpenCC


let str = "鼠标里面的硅二极管坏了，导致光标分辨率降低。"
let converter = try! ChineseConverter(options: [.traditionalize, .twStandard, .twIdiom])
converter.convert(str)
// 滑鼠裡面的矽二極體壞了，導致游標解析度降低。



let str = "滑鼠裡面的矽二極體壞了，導致游標解析度降低。"
let converter = try! ChineseConverter(options: [.simplify])
converter.convert(str)
// 鼠标里面的硅二极管坏了，导致光标分辨率降低。

```

## 警告⚠️⚠️
ChineseConverter存在内存泄漏的问题，在大量使用ChineseConverter对象转换时，建议使用单利 \
\
\
缘由：在我的一个项目中的一个静态方法中大量使用ChineseConverter对应引发的内存泄漏问题。 \
在未使用单利时：项目消耗内存个多G \
使用单利时：只消耗了100多M的内存。




## Documentation

[Github Pages](http://ddddxxx.github.io/SwiftyOpenCC) (100% Documented)





## 自己更新构建
1. Install requirements
```
brew install cmake doxygen
```
2. Checkout new version, like v1.1.7
```
//1. 首先，你需要初始化子仓库。在主仓库的目录中，运行以下命令：
git submodule init

//2. 然后，你需要更新子仓库，这将会拉取子仓库中的所有代码：
git submodule update

//3. 现在，你应该可以在子仓库的目录中看到所有的代码了。
//如果子仓库的代码在远程仓库中有更新，你可以通过以下命令来获取这些更新：
git submodule update --remote
```
3. Make OpenCC
```
 cd OpenCC
 make
```
4. Copy all ./OpenCC/build/rel/data/*.ocd2 files to ./Sources/SwiftyOpenCC/Dictionary/
```
cd ..
cp -rf ./OpenCC/build/rel/data/*.ocd2 ./Sources/SwiftyOpenCC/Dictionary/
```
5. ***Copy Header to ./OpenCC/src/  ⚠️⚠️：注意当前已不再需要拷贝opencc_config.h 文件了***
```
cp -rf ./OpenCC/build/rel/src/opencc_config.h ./OpenCC/src/opencc_config.h 
```


6. Run test in Xcode: Cmd+U




## License

SwiftyOpenCC is available under the MIT license. See the [LICENSE file](LICENSE).

