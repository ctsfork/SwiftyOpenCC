// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "SwiftyOpenCC",
    products: [
        .library(
            name: "SwiftyOpenCC",
            targets: ["SwiftyOpenCC"]),
    ],
    targets: [
        .target(
            name: "SwiftyOpenCC",
            dependencies: ["copencc"],
            resources: [
                .copy("Dictionary")
            ]),
        .testTarget(
            name: "SwiftyOpenCCTests",
            dependencies: ["SwiftyOpenCC"],
            resources: [
                .copy("benchmark"),
                .copy("testcases"),
            ]),
            
        .target(
            name: "copencc",
            exclude: [
                "src/benchmark",
                "src/tools",

                "src/BinaryDict.cpp",
                "src/BinaryDictTest.cpp",
                "src/Config.cpp",
                "src/ConfigTest.cpp",
                "src/Conversion.cpp",
                "src/ConversionChain.cpp",
                "src/ConversionChainTest.cpp",
                "src/ConversionTest.cpp",
                "src/Converter.cpp",
                "src/DartsDict.cpp",
                "src/DartsDictTest.cpp",
                "src/Dict.cpp",
                "src/DictConverter.cpp",
                "src/DictEntry.cpp",
                "src/DictGroup.cpp",
                "src/DictGroupTest.cpp",
                "src/Lexicon.cpp",
                "src/MarisaDict.cpp",
                "src/MarisaDictTest.cpp",
                "src/MaxMatchSegmentation.cpp",
                "src/MaxMatchSegmentationTest.cpp",
                "src/PhraseExtract.cpp",
                "src/PhraseExtractTest.cpp",
                "src/py_opencc.cpp",
                "src/Segmentation.cpp",
                "src/SerializedValues.cpp",
                "src/SerializedValuesTest.cpp",
                "src/SimpleConverter.cpp",
                "src/SimpleConverterTest.cpp",
                "src/TextDict.cpp",
                "src/TextDictTest.cpp",
                "src/UTF8StringSlice.cpp",
                "src/UTF8StringSliceTest.cpp",
                "src/UTF8Util.cpp",
                "src/UTF8UtilTest.cpp",

                
                
                "src/BinaryDict.hpp",
                "src/CmdLineOutput.hpp",
                "src/Common.hpp",
                "src/Config.hpp",
                "src/ConfigTestBase.hpp",
                "src/Conversion.hpp",
                "src/ConversionChain.hpp",
                "src/Converter.hpp",
                "src/DartsDict.hpp",
                "src/Dict.hpp",
                "src/DictConverter.hpp",
                "src/DictEntry.hpp",
                "src/DictGroup.hpp",
                "src/DictGroupTestBase.hpp",
                "src/Exception.hpp",
                "src/Export.hpp",
                "src/Lexicon.hpp",
                "src/MarisaDict.hpp",
                "src/MaxMatchSegmentation.hpp",
                "src/Optional.hpp",
                "src/PhraseExtract.hpp",
                "src/Segmentation.hpp",
                "src/Segments.hpp",
                "src/SerializableDict.hpp",
                "src/SerializedValues.hpp",
                "src/SimpleConverter.hpp",
                "src/TestUtils.hpp",
                "src/TestUtilsUTF8.hpp",
                "src/TextDict.hpp",
                "src/TextDictTestBase.hpp",
                "src/UTF8StringSlice.hpp",
                "src/UTF8Util.hpp",


                "src/opencc_config.h",
                "src/Opencc_Export.h",
                "src/opencc.h",
                "src/opencc_config.h.in",


                "deps/darts-clone",
                "deps/google-benchmark",
                "deps/gtest-1.12.1",
                "deps/marisa-0.2.6",
                "deps/pybind11-2.10.0",
                "deps/rapidjson-1.1.0",
                "deps/tclap-1.2.2",


                // ???
                "src/README.md",
                "src/CMakeLists.txt",
                "deps/marisa-0.2.6/AUTHORS",
                "deps/marisa-0.2.6/CMakeLists.txt",
                "deps/marisa-0.2.6/COPYING.md",
                "deps/marisa-0.2.6/README.md",
            ],
            sources: [
                "source.cpp",
                "src",
                "deps/marisa-0.2.6",
            ],
            cxxSettings: [
                .headerSearchPath("src"),
                .headerSearchPath("configure"),
                .headerSearchPath("deps/darts-clone"),
                .headerSearchPath("deps/marisa-0.2.6/include"),
                .headerSearchPath("deps/marisa-0.2.6/lib"),
                //ENABLE_DARTS  or  OPENCC_ENABLE_DARTS
                .define("OPENCC_ENABLE_DARTS"),
            ]),
    ],
    cxxLanguageStandard: .cxx14
)
