## Application version tag.
## ------------------------------------
## Displayed in certain areas of the app, mostly when `DEV` is active.
VERSION = "1.0.0-alpha8"

## `Debug` mode.
## ------------------------------------
## Set to `True` to shut off symbol rewriting and enable logging.
DEBUG = False

## Browser target year.
## ------------------------------------
## Tune JS and add polyfills based on this feature-set year.
BROWSER_FEATURE_YEAR = 2017

## Closure JS target.
## ------------------------------------
## Describes the language level we should output JS in.
OUTPUT_TARGET = "ECMASCRIPT_2019"

## `CHROMIUM` enable/disable flag.
## ------------------------------------
## Set to `True` to run tests on Chromium via WebDriver.
CHROMIUM = True

## `FIREFOX` enable/disable flag.
## ------------------------------------
## Set to `True` to run tests on Firefox via WebDriver.
FIREFOX = True

## `SAUCE` enable/disable flag.
## ------------------------------------
## Set to `True` to run tests on SauceLabs, as configured.
SAUCE = True

## GraalVM version.
## ------------------------------------
## Assigned to the latest available CE VM.
GRAALVM_VERSION = "22.1.0"

## GraalVM JDK version.
## ------------------------------------
## Specifies the version of the underlying VM JDK.
GRAALVM_JDK_VERSION = "11"

## Java version.
## ------------------------------------
## Sets the language level for JVM output.
JAVA_LANGUAGE_LEVEL = "11"

## Kotlin language version.
## ------------------------------------
## Sets the Kotlin API version.
KOTLIN_LANGUAGE_LEVEL = "1.6"

## Kotlin SDK version.
## ------------------------------------
## Sets the Kotlin runtime version.
KOTLIN_SDK_VERSION = "1.6.21"

## Netty version.
## ------------------------------------
## Needs to be kept in sync with gRPC.
NETTY_VERSION = "4.1.72.Final"

## Tomcat native version.
## ------------------------------------
## Needs to be kept in sync with gRPC.
TCNATIVE_VERSION = "2.0.46.Final"

## React version.
## ------------------------------------
## Sets the version of React to use.
REACT_VERSION = "18.1.0"

## Protobuf toolchain version.
## ------------------------------------
## Sets the version enforced throughout for Protobuf.
PROTOBUF_VERSION = "3.19.4"

## gRPC toolchain version.
## ------------------------------------
## Sets the version enforced throughout for gRPC.
GRPC_VERSION = "1.44.0"

## gRPC Java version.
## ------------------------------------
## Sets the version enforced throughout for gRPC's Java layer.
GRPC_JAVA_VERSION = "1.44.1"

## gRPC Kotlin version.
## ------------------------------------
## Sets the version enforced for gRPC's Kotlin layer.
GRPC_KT_VERSION = "c7b29c0d7bd5b6f48788ac1ba00fcb5d8467226d"

## Google API Extensions version.
## ------------------------------------
## Sets the version enforced throughout for GAX and GAX-gRPC.
GAX_VERSION = "2.12.2"

## JVM-based app debug port.
## ------------------------------------
## Sets the port to wait/listen for remote JVM tools on (for launching a debugger).
JVM_DEBUG_PORT = "5005"

## Golang version to use.
## ------------------------------------
## Sets the version to use for Google's Go language.
GO_VERSION = "1.18"

## NodeJS version to use.
## ------------------------------------
## Sets the version of the Node JS runtime to use.
NODE_VERSION = "16.15.0"

## Yarn version to use.
## ------------------------------------
## Pins the version for the Yarn package manager for Node.
YARN_VERSION = "1.22.18"

## Firebase SDK version.
## ------------------------------------
## Version pin to use for Firebase JS, Java SDKs.
FIREBASE_VERSION = "8.3.2"

## Browser versions.
## ------------------------------------
## Versions to apply with Autoprefixer and other frontend tools.
BROWSERS = "ie >= 9, edge >= 12, firefox >= 42, chrome >= 32, safari >= 8, opera >= 38, ios_saf >= 9.2, android >= 4.3, and_uc >= 9.9"

## Android SDK.
## ------------------------------------
## Whether to load the Android SDK.
ENABLE_ANDROID = False

## Google Cloud SDK.
## ------------------------------------
## Version of the Google Cloud SDK to use and install.
GCLOUD_VERSION = "385.0.0"

## Micronaut.
## ------------------------------------
## Server-side framework version.
MICRONAUT_VERSION = "3.4.3"

## iOS Version.
## ------------------------------------
## Minimum-supported version of iOS.
IOS_MINIMUM_VERSION = "14.0"

## Swift version.
## ------------------------------------
## Language version for Swift.
SWIFT_VERSION = "5.5"

## Apple platforms.
## ------------------------------------
## Minimum platform versions for Apple targets.
APPLE_PLATFORMS = ".iOS(.v14) .macOS(.v10_12) .tvOS(.v11)"

## Local Elide mode.
## ------------------------------------
## Use the workspace-local version of Elide for framework development.
LOCAL_ELIDE = False

## Elide framework version.
## ------------------------------------
## Pinned version of Elide.
ELIDE_VERSION = "0feb64f1630439c91720196d39304ef8c9ac1ede"

## Elide version fingerprint.
## ------------------------------------
## SHA256 fingerprint for the currently-pinned version of Elide.
ELIDE_FINGERPRINT = "06c2b4e2ae3ec7ea1740c22b4c49ee65962829fa625787499019a151332f56d0"
