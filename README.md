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
import OpenCC

let str = "鼠标里面的硅二极管坏了，导致光标分辨率降低。"
let converter = try! ChineseConverter(options: [.traditionalize, .twStandard, .twIdiom])
converter.convert(str)
// 滑鼠裡面的矽二極體壞了，導致游標解析度降低。



let str = "滑鼠裡面的矽二極體壞了，導致游標解析度降低。"
let converter = try! ChineseConverter(options: [.simplify])
converter.convert(str)
// 鼠标里面的硅二极管坏了，导致光标分辨率降低。

```

## Documentation

[Github Pages](http://ddddxxx.github.io/SwiftyOpenCC) (100% Documented)

## License

SwiftyOpenCC is available under the MIT license. See the [LICENSE file](LICENSE).



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
cp -rf ./OpenCC/build/rel/data/*.txt ./Sources/SwiftyOpenCC/Dictionary/
```
5. Copy Header to ./OpenCC/src/
```
cp -rf ./OpenCC/build/rel/src/opencc_config.h ./OpenCC/src/opencc_config.h 
cp -rf ./OpenCC/build/rel/src/Opencc_Export.h ./OpenCC/src/Opencc_Export.h 
```

6. 根据新检出的OpenCC版本，修改Package.swift的配置

7. Run test in Xcode: Cmd+U


