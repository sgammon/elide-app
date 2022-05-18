workspace(
    name = "apptemplate",
    managed_directories = {"@npm": ["node_modules"]},
)

load(
    "@bazel_tools//tools/build_defs/repo:http.bzl",
    "http_archive",
    "http_file",
)
load(
    "@bazel_tools//tools/build_defs/repo:java.bzl",
    "java_import_external",
)
load(
    "@bazel_tools//tools/build_defs/repo:jvm.bzl",
    "jvm_maven_import_external",
)
load(
    "@bazel_tools//tools/build_defs/repo:utils.bzl",
    "maybe",
)
load(
    "//tools:config.bzl",
    "LOCAL_ELIDE",
    "ENABLE_ANDROID",
    "FIREBASE_VERSION",
    "GCLOUD_VERSION",
    "GO_VERSION",
    "GRAALVM_VERSION",
    "GRPC_JAVA_VERSION",
    "GRPC_KT_VERSION",
    "GRPC_VERSION",
    "JAVA_LANGUAGE_LEVEL",
    "MICRONAUT_VERSION",
    "PROTOBUF_VERSION",
    "GAX_VERSION",
    "REACT_VERSION",
    "KOTLIN_SDK_VERSION",
    "ELIDE_VERSION",
    "ELIDE_FINGERPRINT",
    "SWIFT_VERSION",
    "APPLE_PLATFORMS",
    "NETTY_VERSION",
    "TCNATIVE_VERSION",
    "NODE_VERSION",
    "YARN_VERSION",
)

(LOCAL_ELIDE and local_repository(
    name = "elide",
    path = "/Users/sam/Workspace/elide",
))

maybe(
    http_archive,
    name = "elide",
    sha256 = ELIDE_FINGERPRINT,
    strip_prefix = "elide-%s" % ELIDE_VERSION,
    url = "https://github.com/dymecard/elide/archive/%s.tar.gz" % ELIDE_VERSION,
)

http_archive(
    name = "platforms",
    sha256 = "54095d9e2a2c6c0d4629c99fc80ecf4f74f93771aea658c872db888c1103bb93",
    strip_prefix = "platforms-fbd0d188dac49fbcab3d2876a2113507e6fc68e9",
    url = "https://github.com/bazelbuild/platforms/archive/fbd0d188dac49fbcab3d2876a2113507e6fc68e9.zip",
)

http_archive(
    name = "com_google_protobuf",
    sha256 = "3bd7828aa5af4b13b99c191e8b1e884ebfa9ad371b0ce264605d347f135d2568",
    strip_prefix = "protobuf-%s" % PROTOBUF_VERSION,
    urls = ["https://github.com/protocolbuffers/protobuf/archive/v%s.tar.gz" % PROTOBUF_VERSION],
)

http_archive(
    name = "com_google_googleapis",
    sha256 = "023552bfed165bf83b62bb970812f6bae07bb4c200c4d13b883bae792a2e05a2",
    strip_prefix = "googleapis-46d37bc217c831a1e4c922b21ac0f908d50297f1",
    urls = ["https://github.com/googleapis/googleapis/archive/46d37bc217c831a1e4c922b21ac0f908d50297f1.tar.gz"],
)

http_archive(
    name = "com_github_grpc_grpc",
    sha256 = "de2d3168e77e5ffb27758b07e87f6066fd0d8087fe272f278771e7780e6aaacb",
    strip_prefix = "grpc-%s" % GRPC_VERSION,
    urls = ["https://github.com/grpc/grpc/archive/v%s.zip" % GRPC_VERSION],
)

http_archive(
    name = "io_grpc_grpc_java",
    sha256 = "48b8cb8adee4b2336e9f646e17a10107b1c8de495e1302d28a17b4816d6a20ca",
    strip_prefix = "grpc-java-%s" % GRPC_JAVA_VERSION,
    url = "https://github.com/grpc/grpc-java/archive/refs/tags/v%s.zip" % GRPC_JAVA_VERSION,
)

http_archive(
    name = "com_github_grpc_grpc_kotlin",
    sha256 = "a1b0e40e4f4f7a88ce525cb8f729c27e2650a78b0a7f29c6b4824b0a22b4e290",
    strip_prefix = "grpc-kotlin-%s" % GRPC_KT_VERSION,
    url = "https://github.com/grpc/grpc-kotlin/archive/%s.tar.gz" % GRPC_KT_VERSION,
)

http_archive(
    name = "com_github_grpc_grpc_web",
    sha256 = "26e0e82a9bde617449185d546677377362cc46835014a3e663891aaf5ef1b9fe",
    strip_prefix = "grpc-web-8c5502186445e35002697f4bd8d1b820abdbed5d",
    url = "https://github.com/grpc/grpc-web/archive/8c5502186445e35002697f4bd8d1b820abdbed5d.tar.gz",
)

http_archive(
    name = "io_grpc_grpc_proto",
    sha256 = "e64106dbfc4caebcd7df34165404747e097de09f780b4d87c7b7cca96ef34625",
    strip_prefix = "grpc-proto-154a1b24afac83e28240df68b48ebb063d66ed4b",
    urls = ["https://github.com/grpc/grpc-proto/archive/154a1b24afac83e28240df68b48ebb063d66ed4b.tar.gz"],
)

http_archive(
    name = "proto_common",
    sha256 = "215220fdbe924a338a789459dd630ce46f9195d3e73efeb3172e201b578a053d",
    strip_prefix = "api-common-protos-e16c55b094638b43a97edd0847614ab91e2461f7",
    build_file = "proto_common.bzl",
    urls = ["https://github.com/googleapis/api-common-protos/archive/e16c55b094638b43a97edd0847614ab91e2461f7.tar.gz"],
)

http_archive(
    name = "safe_html_types",
    sha256 = "2356090e7632f49ea581bb6f8808fa038a7433d433f3e8d7045a36f81fb39d65",
    strip_prefix = "safe-html-types-8507735457ea41a37dfa027fb176d49d5783c4ba",
    build_file = "safe_html_types.bzl",
    urls = ["https://github.com/google/safe-html-types/archive/8507735457ea41a37dfa027fb176d49d5783c4ba.tar.gz"],
)

http_archive(
    name = "rules_proto",
    sha256 = "66bfdf8782796239d3875d37e7de19b1d94301e8972b3cbd2446b332429b4df1",
    strip_prefix = "rules_proto-4.0.0",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_proto/archive/refs/tags/4.0.0.tar.gz",
        "https://github.com/bazelbuild/rules_proto/archive/refs/tags/4.0.0.tar.gz",
    ],
)

http_archive(
    name = "io_bazel_rules_closure",
    sha256 = "2e4aa34e75d57248a168535f66454a5291919728df6433102621125b63b82498",
    strip_prefix = "rules_closure-4d9d3a1fbe5a0ed9a5c84e2ce9b774513041a902",
    url = "https://github.com/dymecard/rules_closure/archive/4d9d3a1fbe5a0ed9a5c84e2ce9b774513041a902.tar.gz",
)

http_archive(
    name = "io_bazel_rules_sass",
    sha256 = "6cca1c3b77185ad0a421888b90679e345d7b6db7a8c9c905807fe4581ea6839a",
    strip_prefix = "rules_sass-1.49.8",
    url = "https://github.com/bazelbuild/rules_sass/archive/1.49.8.zip",
)

http_archive(
    name = "build_bazel_rules_postcss",
    url = "https://github.com/bazelbuild/rules_postcss/archive/0.5.0.tar.gz",
    strip_prefix = "rules_postcss-0.5.0",
    sha256 = "3f0c754f97e3940ea90f4d6408bfb2aefb3850e7941572b22b1b88579c428ff9",
)

http_archive(
    name = "bazel_gazelle",
    sha256 = "de69a09dc70417580aabf20a28619bb3ef60d038470c7cf8442fafcf627c21cb",
    urls = [
        "https://storage.googleapis.com/bazel-mirror/github.com/bazelbuild/bazel-gazelle/releases/download/v0.24.0/bazel-gazelle-v0.24.0.tar.gz",
        "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.24.0/bazel-gazelle-v0.24.0.tar.gz",
    ],
)

http_archive(
    name = "bazel_skylib",
    sha256 = "af87959afe497dc8dfd4c6cb66e1279cb98ccc84284619ebfec27d9c09a903de",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.2.0/bazel-skylib-1.2.0.tar.gz",
        "https://github.com/bazelbuild/bazel-skylib/releases/download/1.2.0/bazel-skylib-1.2.0.tar.gz",
    ],
)

http_archive(
    name = "rules_python",
    sha256 = "55726ab62f7933d72a8e03d3fd809f1a66e8f67147a3ead6e88638ee8ac11410",
    strip_prefix = "rules_python-6e0cb652386870f72d8dab554a2ce0e4688c9ab5",
    url = "https://github.com/bazelbuild/rules_python/archive/6e0cb652386870f72d8dab554a2ce0e4688c9ab5.zip",
)

http_archive(
    name = "rules_java",
    sha256 = "89d209ef85f2372ead0c2d1948567469f1477556c6f0e925d9de25599cb00525",
    strip_prefix = "rules_java-8d65f400a3c5b8d2a18fed7fc94f5af666805162",
    url = "https://github.com/bazelbuild/rules_java/archive/8d65f400a3c5b8d2a18fed7fc94f5af666805162.tar.gz",
)

http_archive(
    name = "io_bazel_rules_go",
    sha256 = "f2dcd210c7095febe54b804bb1cd3a58fe8435a909db2ec04e31542631cf715c",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.31.0/rules_go-v0.31.0.zip",
        "https://github.com/bazelbuild/rules_go/releases/download/v0.31.0/rules_go-v0.31.0.zip",
    ],
)

http_archive(
    name = "io_bazel_rules_docker",
    sha256 = "27d53c1d646fc9537a70427ad7b034734d08a9c38924cc6357cc973fed300820",
    strip_prefix = "rules_docker-0.24.0",
    urls = ["https://github.com/bazelbuild/rules_docker/releases/download/v0.24.0/rules_docker-v0.24.0.tar.gz"],
)

http_archive(
    name = "build_bazel_rules_nodejs",
    sha256 = "e328cb2c9401be495fa7d79c306f5ee3040e8a03b2ebb79b022e15ca03770096",
    urls = ["https://github.com/bazelbuild/rules_nodejs/releases/download/5.4.2/rules_nodejs-5.4.2.tar.gz"],
)

http_archive(
    name = "rules_nodejs",
    sha256 = "26766278d815a6e2c43d2f6c9c72fde3fec8729e84138ffa4dabee47edc7702a",
    urls = ["https://github.com/bazelbuild/rules_nodejs/releases/download/5.4.2/rules_nodejs-core-5.4.2.tar.gz"],
)

http_archive(
    name = "io_bazel_rules_webtesting",
    sha256 = "e9abb7658b6a129740c0b3ef6f5a2370864e102a5ba5ffca2cea565829ed825a",
    urls = [
        "https://github.com/bazelbuild/rules_webtesting/releases/download/0.3.5/rules_webtesting.tar.gz",
    ],
)

http_archive(
    name = "incremental_dom",
    sha256 = "33b060bb04c38b4c5c9c203de702dcbc482128be0cead6c5e9e9658dfae8b715",
    strip_prefix = "incremental-dom-a6c91ebc569110993c7c4130f0456504f624459a",
    url = "https://github.com/dymecard/incremental-dom/archive/a6c91ebc569110993c7c4130f0456504f624459a.tar.gz",
)

http_file(
    name = "gcloud_archive",
    downloaded_file_path = "google-cloud-sdk.tar.gz",
    sha256 = "cd1839e9343e32f64645f2d3c269340a9c50d0c77d85c9a0a44cd9de2103879e",
    urls = [
        "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-%s-linux-x86_64.tar.gz" % GCLOUD_VERSION,
    ],
)

http_archive(
    name = "remote_java_tools",
    sha256 = "a7ac5922ee01e8b8fcb546ffc264ef314d0a0c679328b7fa4c432e5f54a86067",
    urls = [
        "https://mirror.bazel.build/bazel_java_tools/releases/java/v11.6/java_tools-v11.6.zip",
        "https://github.com/bazelbuild/java_tools/releases/download/java_v11.6/java_tools-v11.6.zip",
    ],
)

http_archive(
    name = "remote_java_tools_linux",
    sha256 = "15da4f84a7d39cd179acf3035d9def638eea6ba89a0ed8f4e8a8e6e1d6c8e328",
    urls = [
        "https://mirror.bazel.build/bazel_java_tools/releases/java/v11.6/java_tools_linux-v11.6.zip",
        "https://github.com/bazelbuild/java_tools/releases/download/java_v11.6/java_tools_linux-v11.6.zip",
    ],
)

http_archive(
    name = "remote_java_tools_windows",
    sha256 = "939f9d91f0df02851bbad8f5b1d26d24011329394cafe5668c1234e31ac2a1f7",
    urls = [
        "https://mirror.bazel.build/bazel_java_tools/releases/java/v11.6/java_tools_windows-v11.6.zip",
        "https://github.com/bazelbuild/java_tools/releases/download/java_v11.6/java_tools_windows-v11.6.zip",
    ],
)

http_archive(
    name = "remote_java_tools_darwin",
    sha256 = "f17ee54582b61f1ebd84c8fa2c54df796914cfbaac3cb821fb1286b55b080bc0",
    urls = [
        "https://mirror.bazel.build/bazel_java_tools/releases/java/v11.6/java_tools_darwin-v11.6.zip",
        "https://github.com/bazelbuild/java_tools/releases/download/java_v11.6/java_tools_darwin-v11.6.zip",
    ],
)

http_archive(
    name = "material_design_icons",
    sha256 = "e450dc7a38c1ffb9661c094f0cce15578c1540f860b2883ae0b3d01926f8b746",
    strip_prefix = "material-design-icons-b3f05bfbf4329a5b63f50a720f867c2bac163f98",
    url = "https://github.com/google/material-design-icons/archive/b3f05bfbf4329a5b63f50a720f867c2bac163f98.tar.gz",
)

rules_scala_version = "e7a948ad1948058a7a5ddfbd9d1629d6db839933"

http_archive(
    name = "io_bazel_rules_scala",
    sha256 = "76e1abb8a54f61ada974e6e9af689c59fd9f0518b49be6be7a631ce9fa45f236",
    strip_prefix = "rules_scala-%s" % rules_scala_version,
    type = "zip",
    url = "https://github.com/bazelbuild/rules_scala/archive/%s.zip" % rules_scala_version,
)

http_archive(
    name = "rules_pkg",
    sha256 = "62eeb544ff1ef41d786e329e1536c1d541bb9bcad27ae984d57f18f314018e66",
    url = "https://github.com/bazelbuild/rules_pkg/releases/download/0.6.0/rules_pkg-0.6.0.tar.gz",
)

load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

bazel_skylib_workspace()

load("@rules_pkg//:deps.bzl", "rules_pkg_dependencies")

rules_pkg_dependencies()

load("@rules_java//java:repositories.bzl", "rules_java_dependencies", "rules_java_toolchains")

rules_java_dependencies()

rules_java_toolchains()

load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps", "PROTOBUF_MAVEN_ARTIFACTS")

protobuf_deps()

load("@build_bazel_rules_nodejs//:repositories.bzl", "build_bazel_rules_nodejs_dependencies")

build_bazel_rules_nodejs_dependencies()

load("@build_bazel_rules_nodejs//:index.bzl", "node_repositories")

node_repositories(
    node_version = NODE_VERSION,
    yarn_version = YARN_VERSION,
)

load("@build_bazel_rules_nodejs//:index.bzl", "yarn_install")

yarn_install(
    name = "npm",
    package_json = "//:package.json",
    yarn_lock = "//:yarn.lock",
)

load("@npm//@bazel/labs:package.bzl", "npm_bazel_labs_dependencies")

npm_bazel_labs_dependencies()

load("@com_google_googleapis//:repository_rules.bzl", "switched_rules_by_language")

switched_rules_by_language(
    name = "com_google_googleapis_imports",
    cc = True,
    csharp = False,
    gapic = True,
    go = False,
    grpc = True,
    java = True,
    nodejs = False,
    php = False,
    python = False,
    ruby = True,
)

http_archive(
    name = "build_bazel_rules_android",
    sha256 = "cd06d15dd8bb59926e4d65f9003bfc20f9da4b2519985c27e190cddc8b7a7806",
    strip_prefix = "rules_android-0.1.1",
    urls = ["https://github.com/bazelbuild/rules_android/archive/v0.1.1.zip"],
)

rules_kotlin_version = "1.6.0-RC-1"  # v1.6.0-RC-1

rules_kotlin_sha = "f1a4053eae0ea381147f5056bb51e396c5c494c7f8d50d0dee4cc2f9d5c701b0"

http_archive(
    name = "io_bazel_rules_kotlin",
    sha256 = rules_kotlin_sha,
    urls = ["https://github.com/bazelbuild/rules_kotlin/releases/download/%s/rules_kotlin_release.tgz" % rules_kotlin_version],
)

http_archive(
    name = "com_google_j2cl",
    sha256 = "f8c181184408c1b4c76aaa6acfa5f4f5b62dd9328f34c34a5f792a240d395630",
    strip_prefix = "j2cl-ee2191aea6a795853f08e8864e2ccd553da03b0a",
    url = "https://github.com/dymecard/j2cl/archive/ee2191aea6a795853f08e8864e2ccd553da03b0a.zip",
)

http_archive(
    name = "com_google_elemental2",
    sha256 = "bf925bef3a9e2104e45c7a097e87f8c7d87735a1496343dd0b86af94fc050c0d",
    strip_prefix = "elemental2-7c822ebb67e7a34546ba5123fb48b46483fcd57f",
    url = "https://github.com/google/elemental2/archive/7c822ebb67e7a34546ba5123fb48b46483fcd57f.tar.gz",
)

http_archive(
    name = "com_google_closure_compiler_externs",
    build_file = "closure_compiler_externs.bzl",
    sha256 = "f1d7c3b05b9b492926674a181be71873683784f5dfbf2daf01f32dd87422766a",
    strip_prefix = "closure-compiler-adffb98885b62f879b0934effab8ac003d47b713/contrib/externs",
    url = "https://github.com/google/closure-compiler/archive/adffb98885b62f879b0934effab8ac003d47b713.tar.gz",
)

http_archive(
    name = "build_bazel_rules_apple",
    sha256 = "a5f00fd89eff67291f6cd3efdc8fad30f4727e6ebb90718f3f05bbf3c3dd5ed7",
    url = "https://github.com/bazelbuild/rules_apple/releases/download/0.33.0/rules_apple.0.33.0.tar.gz",
)

http_archive(
    name = "io_bazel_stardoc",
    sha256 = "bbb0d02ff76cb3e1d248b379342706b21f84ee74cce277eb2a4b5d198a7502ef",
    strip_prefix = "stardoc-4d5b5dae64af3b445c73612e09371a6c0e7fd4fd",
    url = "https://github.com/bazelbuild/stardoc/archive/4d5b5dae64af3b445c73612e09371a6c0e7fd4fd.tar.gz",
)

http_archive(
    name = "build_bazel_rules_swift",
    sha256 = "afb4a675a419d0a1692b1d82b37a61a95b33498d04e405eb813ad2e755a9e025",
    strip_prefix = "rules_swift-c1d7d1df6969c2675c7826ecf1202d78016b1753",
    url = "https://github.com/bazelbuild/rules_swift/archive/c1d7d1df6969c2675c7826ecf1202d78016b1753.tar.gz",
)

http_archive(
    name = "xchammer",
    sha256 = "dbb998f08a2efaade0a6e76363249cc581107d5c4fec63a1b7ef16a40b64c32e",
    urls = [ "https://github.com/pinterest/xchammer/releases/download/v3.4.1.6/xchammer.zip" ],
)

http_archive(
    name = "cgrindel_rules_spm",
    sha256 = "ccf0ab79971a5a3b171187ea9449d29c6218a097512e4650f3c4d0b84c0d7917",
    strip_prefix = "rules_spm-0cbd68127a333a7b39a25f5175ca189ee017882f",
    url = "https://github.com/cgrindel/rules_spm/archive/0cbd68127a333a7b39a25f5175ca189ee017882f.tar.gz",
)

http_archive(
    name = "grpc_ecosystem_grpc_gateway",
    sha256 = "40029e77c82430366c884089375d6b933b5efed6b72645fab6f1337d1954cc0b",
    strip_prefix = "grpc-gateway-eefd4d7e7e0dd8e34da986bb039a75357e87ef9a",
    url = "https://github.com/grpc-ecosystem/grpc-gateway/archive/eefd4d7e7e0dd8e34da986bb039a75357e87ef9a.tar.gz",
)

http_archive(
    name = "com_google_jsinterop_generator",
    sha256 = "9376e9e46361fe7f5d91bdeaca805f6c1355ac7d31ce1c84cbe98a50c8658ac5",
    strip_prefix = "jsinterop-generator-785241396e954be6033308d9ab20aeae59e5c9af",
    url = "https://github.com/google/jsinterop-generator/archive/785241396e954be6033308d9ab20aeae59e5c9af.zip",
)

http_archive(
    name = "rules_graal",
    sha256 = "14e6d480fb2c0f03f2331efef316d2b8e07c32d34b1ea8a0eef83ea6a15d22df",
    strip_prefix = "rules_graal-9fd38761df4ac293f952d10379c0c3520dd9ceed",
    url = "https://github.com/andyscott/rules_graal/archive/9fd38761df4ac293f952d10379c0c3520dd9ceed.zip",
)

http_archive(
    name = "com_github_bazelbuild_buildtools",
    sha256 = "7f43df3cca7bb4ea443b4159edd7a204c8d771890a69a50a190dc9543760ca21",
    strip_prefix = "buildtools-5.0.1",
    urls = ["https://github.com/bazelbuild/buildtools/archive/5.0.1.tar.gz"],
)

http_archive(
    name = "gapic_generator_java",
    sha256 = "3f627429c8265560b7d60ca1e80d51a2f5e6cf1a523329510ab5c89da4d376d8",
    strip_prefix = "gapic-generator-java-9e863f8b7b0407cb1a58aba5952f54b56d15167f",
    urls = ["https://github.com/googleapis/gapic-generator-java/archive/9e863f8b7b0407cb1a58aba5952f54b56d15167f.tar.gz"]
)

http_archive(
    name = "gapic_generator_typescript",
    sha256 = "1c67cdc4b7d8c8cb1dd84ae4288e1c266bd10a24ed42ae09d568b056bd1597ef",
    strip_prefix = "gapic-generator-typescript-3ab47f04678d72171ddf25b439d50f6dfb44584c",
    urls = ["https://github.com/googleapis/gapic-generator-typescript/archive/3ab47f04678d72171ddf25b439d50f6dfb44584c.tar.gz"]
)

http_archive(
    name = "gapic_generator_ruby",
    sha256 = "84af1a709bd8231c830efdc14937cd7e26c2d662f1e6bcb17852515f0eae1b22",
    strip_prefix = "gapic-generator-ruby-43b82e6230abe0e91f5742a85bc6fd2cee8f9073",
    urls = ["https://github.com/googleapis/gapic-generator-ruby/archive/43b82e6230abe0e91f5742a85bc6fd2cee8f9073.tar.gz"]
)

http_archive(
    name = "com_google_api_gax_java",
    sha256 = "fc3da0bf7132a7125819fc8213c1b163dc12d48fdca86f5ceacb2310759fdc1a",
    strip_prefix = "gax-java-%s" % GAX_VERSION,
    urls = ["https://github.com/googleapis/gax-java/archive/refs/tags/v%s.tar.gz" % GAX_VERSION]
)

http_archive(
    name = "rules_gapic",
    sha256 = "46ccb6e292834701a0d97ddff9adf715576fe34e5fc4290311063ca92cf45dc7",
    strip_prefix = "rules_gapic-4dc51e998363dfc7957bd951af19fe6b9add392c",
    urls = ["https://github.com/googleapis/rules_gapic/archive/4dc51e998363dfc7957bd951af19fe6b9add392c.tar.gz"],
)

http_archive(
    name = "rules_cc",
    sha256 = "d1886f0ea5b6cfe7519b87030811f52620db31bcca7ef9964aa17af2d14f23c4",
    strip_prefix = "rules_cc-cb6d32e4d1ae29e20dd3328109d8cb7f8eccc9be",
    urls = ["https://github.com/bazelbuild/rules_cc/archive/cb6d32e4d1ae29e20dd3328109d8cb7f8eccc9be.tar.gz"],
)

http_archive(
    name = "rules_foreign_cc",
    sha256 = "15b5357229a8695745503ccc16b635df229176606ff14835d62c636eae2ea3ad",
    strip_prefix = "rules_foreign_cc-78c5f7738551e8fae02c14a883ab5b7ab15f7764",
    urls = ["https://github.com/bazelbuild/rules_foreign_cc/archive/78c5f7738551e8fae02c14a883ab5b7ab15f7764.tar.gz"],
)

jvm_maven_import_external(
    name = "google_java_format_all_deps",
    artifact = "com.google.googlejavaformat:google-java-format:jar:all-deps:1.7",
    licenses = [
        "notice",
        "reciprocal",
    ],
    server_urls = [
        "https://repo.maven.apache.org/maven2/",
        "http://repo1.maven.org/maven2/",
    ],
)

load("@rules_cc//cc:repositories.bzl", "rules_cc_dependencies", "rules_cc_toolchains")

rules_cc_dependencies()

load("@rules_foreign_cc//foreign_cc:repositories.bzl", "rules_foreign_cc_dependencies")

rules_foreign_cc_dependencies()

RULES_JVM_EXTERNAL_TAG = "4.2"

RULES_JVM_EXTERNAL_SHA = "cd1a77b7b02e8e008439ca76fd34f5b07aecb8c752961f9640dea15e9e5ba1ca"

http_archive(
    name = "rules_jvm_external",
    sha256 = RULES_JVM_EXTERNAL_SHA,
    strip_prefix = "rules_jvm_external-%s" % RULES_JVM_EXTERNAL_TAG,
    url = "https://github.com/bazelbuild/rules_jvm_external/archive/%s.zip" % RULES_JVM_EXTERNAL_TAG,
)

load("@io_bazel_rules_kotlin//kotlin:repositories.bzl", "kotlin_repositories", "kotlinc_version")

kotlin_repositories(
    compiler_release = kotlinc_version(
        release = KOTLIN_SDK_VERSION,
        sha256 = "632166fed89f3f430482f5aa07f2e20b923b72ef688c8f5a7df3aa1502c6d8ba",
    ),
)

register_toolchains("@elide//tools/defs/kt/toolchain")

load("@com_google_j2cl//build_defs:repository.bzl", "load_j2cl_repo_deps")

load_j2cl_repo_deps()

load("@com_google_j2cl//build_defs:rules.bzl", "setup_j2cl_workspace")

setup_j2cl_workspace(
    omit_com_google_errorprone_error_prone_annotations = True,
)

load("@com_google_elemental2//build_defs:repository.bzl", "load_elemental2_repo_deps")

load_elemental2_repo_deps()

load("@com_google_elemental2//build_defs:workspace.bzl", "setup_elemental2_workspace")

setup_elemental2_workspace()

load("@io_bazel_rules_closure//closure:repositories.bzl", "rules_closure_toolchains")

rules_closure_toolchains()

load("@io_bazel_rules_sass//:defs.bzl", "sass_repositories")

sass_repositories()

# Stores Scala version and other configuration
# 2.12 is a default version, other versions can be use by passing them explicitly:
# scala_config(scala_version = "2.11.12")
load("@io_bazel_rules_scala//:scala_config.bzl", "scala_config")

scala_config()

load("@io_bazel_rules_scala//scala:scala.bzl", "scala_repositories")

scala_repositories()

load("@build_bazel_rules_apple//apple:repositories.bzl", "apple_rules_dependencies")

apple_rules_dependencies()

load("@cgrindel_rules_spm//spm:deps.bzl", "spm_rules_dependencies")

spm_rules_dependencies()

load("@build_bazel_rules_swift//swift:repositories.bzl", "swift_rules_dependencies")

swift_rules_dependencies()

load("@build_bazel_rules_swift//swift:extras.bzl", "swift_rules_extra_dependencies")

swift_rules_extra_dependencies()

load("@build_bazel_apple_support//lib:repositories.bzl", "apple_support_dependencies")

apple_support_dependencies()

load("@bazel_gazelle//:deps.bzl", "go_repository")

# FROM CEL-GO: Do *not* call *_dependencies(), etc, yet.  See comment at the end.

go_repository(
    name = "org_golang_google_protobuf",
    build_file_proto_mode = "disable_global",
    importpath = "google.golang.org/protobuf",
    tag = "v1.25.0",
)

# Generated Google APIs protos for Golang 11/16/2020
go_repository(
    name = "org_golang_google_genproto",
    build_file_proto_mode = "disable_global",
    commit = "62d171c70ae133bd47722027b62f8820407cf744",
    importpath = "google.golang.org/genproto",
)

# gRPC deps for v1.33.2 (including x/text and x/net)
go_repository(
    name = "org_golang_google_grpc",
    build_file_proto_mode = "disable_global",
    importpath = "google.golang.org/grpc",
    tag = "v1.33.2",
)

go_repository(
    name = "org_golang_x_net",
    importpath = "golang.org/x/net",
    sum = "h1:oWX7TPOiFAMXLq8o0ikBYfCJVlRHBcsciT5bXOrH628=",
    version = "v0.0.0-20190311183353-d8887717615a",
)

go_repository(
    name = "org_golang_x_text",
    importpath = "golang.org/x/text",
    sum = "h1:tW2bmiBqwgJj/UpqtC8EpXEZVYOwU0yG4iWbprSVAcs=",
    version = "v0.3.2",
)

# Antlr deps to pickup golang concurrency fixes 4/30/2020
go_repository(
    name = "com_github_antlr",
    commit = "621b933c7a7f01c67ae9de15103151fa0f9d6d90",
    importpath = "github.com/antlr/antlr4",
)

# strcase deps
go_repository(
    name = "com_github_stoewer_go_strcase",
    importpath = "github.com/stoewer/go-strcase",
    sum = "h1:Z2iHWqGXH00XYgqDmNgQbIBxf3wrNq0F3feEy0ainaU=",
    version = "v1.2.0",
)

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")

go_rules_dependencies()

go_register_toolchains(
    version = GO_VERSION,
)

load("@grpc_ecosystem_grpc_gateway//:repositories.bzl", grpc_ecosystem_repos = "go_repositories")

grpc_ecosystem_repos()

load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")

gazelle_dependencies()

load("@com_github_grpc_grpc//bazel:grpc_deps.bzl", "grpc_deps", "grpc_test_only_deps")

grpc_deps()

grpc_test_only_deps()

load("@com_github_grpc_grpc//bazel:grpc_extra_deps.bzl", "grpc_extra_deps")

grpc_extra_deps()

load("@rules_proto//proto:repositories.bzl", "rules_proto_dependencies", "rules_proto_toolchains")

rules_proto_dependencies()

rules_proto_toolchains()

load("@io_bazel_rules_scala//scala:toolchains.bzl", "scala_register_toolchains")

scala_register_toolchains()

# optional: setup ScalaTest toolchain and dependencies
load("@io_bazel_rules_scala//testing:scalatest.bzl", "scalatest_repositories", "scalatest_toolchain")

scalatest_repositories()

scalatest_toolchain()

load("@io_bazel_rules_webtesting//web:repositories.bzl", "web_test_repositories")

web_test_repositories()

load("@io_bazel_rules_webtesting//web/versioned:browsers-0.3.3.bzl", "browser_repositories")

browser_repositories(
    chromium = True,
    firefox = True,
)

load("@rules_jvm_external//:repositories.bzl", "rules_jvm_external_deps")

rules_jvm_external_deps()

load("@rules_jvm_external//:setup.bzl", "rules_jvm_external_setup")

rules_jvm_external_setup()

load("@io_bazel_rules_docker//repositories:repositories.bzl", container_repositories = "repositories")

container_repositories()

load("@io_bazel_rules_docker//repositories:deps.bzl", container_deps = "deps")

container_deps()

load("@io_bazel_rules_docker//java:image.bzl", java_image_repos = "repositories")

java_image_repos()

load("@com_github_bazelbuild_buildtools//buildifier:deps.bzl", "buildifier_dependencies")

buildifier_dependencies()

load("@rules_jvm_external//:defs.bzl", "maven_install")
load("@rules_jvm_external//:specs.bzl", "maven")
load("@io_bazel_rules_docker//container:container.bzl", "container_pull")

load("@com_github_grpc_grpc_kotlin//:repositories.bzl", "IO_GRPC_GRPC_KOTLIN_ARTIFACTS")
load("@com_github_grpc_grpc_kotlin//:repositories.bzl", "IO_GRPC_GRPC_KOTLIN_OVERRIDE_TARGETS")
load("@com_github_grpc_grpc_kotlin//:repositories.bzl", "grpc_kt_repositories")
load("@com_github_grpc_grpc_kotlin//:repositories.bzl", "io_grpc_grpc_java")

io_grpc_grpc_java()

load("@io_grpc_grpc_java//:repositories.bzl", "IO_GRPC_GRPC_JAVA_ARTIFACTS")
load("@io_grpc_grpc_java//:repositories.bzl", "IO_GRPC_GRPC_JAVA_OVERRIDE_TARGETS")
load("@io_grpc_grpc_java//:repositories.bzl", "grpc_java_repositories")

grpc_kt_repositories()

grpc_java_repositories()

## GAX

load("@com_google_api_gax_java//:repository_rules.bzl", "com_google_api_gax_java_properties")

com_google_api_gax_java_properties(
    name = "com_google_api_gax_java_properties",
    file = "//tools/gax/java:dependencies.properties",
)

load("@com_google_api_gax_java//:repositories.bzl", "com_google_api_gax_java_repositories")

com_google_api_gax_java_repositories()

## GAPIC Deps

load("@rules_gapic//:repositories.bzl", "rules_gapic_repositories")

rules_gapic_repositories()

load("@rules_gapic//synth:synth_repositories.bzl", "synth")

synth()

## Frontend Deps

container_pull(
    name = "ubuntu_base",
    digest = "sha256:22506a3e9d506180e9bce92e071cb6ef6b4a4956a088efbc0c0e990185f0ef7d",
    registry = "gcr.io",
    repository = "cloud-marketplace/google/ubuntu2004",
)

container_pull(
    name = "esp",
    digest = "sha256:bad90d2bd901c5cbdadfc1ff99694b9a6b215e732cdb5254ccf39033618687b0",
    registry = "gcr.io",
    repository = "endpoints-release/endpoints-runtime-serverless",
)

load("@rules_graal//graal:graal_bindist.bzl", "graal_bindist_repository")

graal_bindist_repository(
    name = "graal",
    java_version = JAVA_LANGUAGE_LEVEL,
    version = GRAALVM_VERSION,
)

load("@elide//tools/defs/java/testing:junit5.bzl", "junit5_repositories")

junit5_repositories()

load("@io_bazel_rules_webtesting//web:java_repositories.bzl", "RULES_WEBTESTING_ARTIFACTS")

INJECTED_JVM_ARTIFACTS = (
    [i for i in RULES_WEBTESTING_ARTIFACTS if not (
        "guava" in i or
        "gson" in i or
        "error_prone_annotations" in i or
        "truth" in i or
        "okio" in i or
        "com.google.auth" in i
    )] +
    [i for i in (
        IO_GRPC_GRPC_JAVA_ARTIFACTS +
        IO_GRPC_GRPC_KOTLIN_ARTIFACTS +
        PROTOBUF_MAVEN_ARTIFACTS
    ) if not (
        "guava" in i or
        "gson" in i or
        "error_prone_annotations" in i or
        "truth" in i or
        "okhttp" in i or
        "okio" in i or
        "com.google.auth" in i
    )]
)

TEST_ARTIFACTS = [
    "io.micronaut.test:micronaut-test-junit5:3.1.1",
    "org.codehaus.janino:janino:3.1.7",
    "org.codehaus.janino:commons-compiler:3.1.7",
    "org.codehaus.janino:commons-compiler-jdk:3.1.7",
    "org.testcontainers:testcontainers:1.17.1",
    "org.testcontainers:database-commons:1.17.1",
    "org.testcontainers:gcloud:1.17.1",
    "org.testcontainers:postgresql:1.17.1",
    "org.testcontainers:neo4j:1.17.1",
    "org.testcontainers:nginx:1.17.1",
    "org.testcontainers:jdbc:1.17.1",
    "org.testcontainers:junit-jupiter:1.17.1",
]

NEVERLINK_ARTIFACTS = [
    # None yet.
]

KWRAPPERS_VERSION = "pre.336"

maven_install(
    artifacts = [
        "ch.qos.logback:logback-core:1.2.10",
        "ch.qos.logback:logback-classic:1.2.10",
        "commons-codec:commons-codec:1.15",
        "commons-io:commons-io:2.11.0",
        "com.algolia:algoliasearch-core:3.16.5",
        "com.algolia:algoliasearch-java-net:3.16.5",
        "com.auth0:auth0:1.41.0",
        "com.auth0:jwks-rsa:0.21.1",
        "com.auth0:java-jwt:3.19.1",
        "com.aventrix.jnanoid:jnanoid:2.0.0",
        "com.cloudinary:cloudinary:1.0.14",
        "com.cloudinary:cloudinary-http44:1.32.2",
        "com.fasterxml.jackson.core:jackson-annotations:2.13.2",
        "com.fasterxml.jackson.core:jackson-core:2.13.2",
        "com.fasterxml.jackson.core:jackson-databind:2.13.2.2",
        "com.fasterxml.jackson.datatype:jackson-datatype-jdk8:2.13.2",
        "com.fasterxml.jackson.datatype:jackson-datatype-jsr310:2.13.2",
        "com.fasterxml.jackson.module:jackson-module-blackbird:2.13.2",
        "com.fasterxml.jackson.module:jackson-module-parameter-names:2.13.2",
        "com.google.api:api-common:2.1.5",
        "com.google.api:gax:%s" % GAX_VERSION,
        "com.google.api:gax-grpc:%s" % GAX_VERSION,
        "com.google.api.grpc:proto-google-cloud-firestore-v1:3.0.19",
        "com.google.api.grpc:proto-google-cloud-pubsub-v1:1.98.0",
        "com.google.api.grpc:proto-google-cloud-secretmanager-v1:2.1.3",
        "com.google.auth:google-auth-library-credentials:1.6.0",
        "com.google.auth:google-auth-library-oauth2-http:1.6.0",
        "com.google.auto.value:auto-value:1.9",
        "com.google.auto.value:auto-value-annotations:1.9",
        "com.google.code.findbugs:jsr305:3.0.2",
        "com.google.code.gson:gson:2.9.0",
        "com.google.cloud:google-cloud-core:2.5.6",
        "com.google.cloud:google-cloud-core-grpc:2.5.6",
        "com.google.cloud:google-cloud-errorreporting:0.122.21-beta",
        "com.google.cloud:google-cloud-firestore:3.0.19",
        "com.google.cloud:google-cloud-logging:3.7.1",
        "com.google.cloud:google-cloud-logging-logback:0.123.6-alpha",
        "com.google.cloud:google-cloud-pubsub:1.116.0",
        "com.google.cloud:google-cloud-secretmanager:2.1.3",
        "com.google.cloud:google-cloud-spanner:6.21.2",
        "com.google.cloud:native-image-support:0.13.1",
        "com.google.errorprone:error_prone_annotations:2.9.0",
        "com.google.guava:failureaccess:1.0.1",
        "com.google.guava:guava:30.1.1-android",
        "com.google.jimfs:jimfs:1.2",
        "com.google.firebase:firebase-admin:8.1.0",
        "com.google.mug:mug:6.0",
        "com.google.mug:mug-guava:6.0",
        "com.google.mug:mug-protobuf:6.0",
        "com.google.protobuf:protobuf-java:%s" % PROTOBUF_VERSION,
        "com.google.protobuf:protobuf-java-util:%s" % PROTOBUF_VERSION,
        "com.google.protobuf:protobuf-kotlin:%s" % PROTOBUF_VERSION,
        "com.google.crypto.tink:tink:1.6.1",
        "com.google.truth:truth:1.1.3",
        "com.google.truth.extensions:truth-proto-extension:1.1.3",
        "com.google.truth.extensions:truth-java8-extension:1.1.3",
        "com.h2database:h2:2.1.212",
        "com.nimbusds:nimbus-jose-jwt:9.22",
        "com.sendgrid:sendgrid-java:4.9.1",
        "com.squareup.okhttp3:okhttp:4.9.1",
        "com.squareup.okio:okio:2.8.0",
        "com.twilio.sdk:twilio:8.30.0",
        "io.getstream.client:stream-java:3.5.0",
        "io.grpc:grpc-all:%s" % GRPC_JAVA_VERSION,
        "io.grpc:grpc-alts:%s" % GRPC_JAVA_VERSION,
        "io.grpc:grpc-android:%s" % GRPC_JAVA_VERSION,
        "io.grpc:grpc-auth:%s" % GRPC_JAVA_VERSION,
        "io.grpc:grpc-core:%s" % GRPC_JAVA_VERSION,
        "io.grpc:grpc-context:%s" % GRPC_JAVA_VERSION,
        "io.grpc:grpc-grpclb:%s" % GRPC_JAVA_VERSION,
        "io.grpc:grpc-stub:%s" % GRPC_JAVA_VERSION,
        "io.grpc:grpc-testing:%s" % GRPC_JAVA_VERSION,
        "io.grpc:grpc-netty:%s" % GRPC_JAVA_VERSION,
        "io.grpc:grpc-netty-shaded:%s" % GRPC_JAVA_VERSION,
        "io.grpc:grpc-okhttp:%s" % GRPC_JAVA_VERSION,
        "io.grpc:grpc-protobuf:%s" % GRPC_JAVA_VERSION,
        "io.grpc:grpc-protobuf-lite:%s" % GRPC_JAVA_VERSION,
        "io.grpc:grpc-services:%s" % GRPC_JAVA_VERSION,
        "io.grpc:grpc-xds:%s" % GRPC_JAVA_VERSION,
        "io.grpc:grpc-kotlin-stub:1.2.1",
        "io.reactivex.rxjava3:rxjava:3.1.4",
        "io.micronaut:micronaut-aop:%s" % MICRONAUT_VERSION,
        "io.micronaut:micronaut-core:%s" % MICRONAUT_VERSION,
        "io.micronaut:micronaut-context:%s" % MICRONAUT_VERSION,
        "io.micronaut:micronaut-inject:%s" % MICRONAUT_VERSION,
        "io.micronaut:micronaut-inject-java:%s" % MICRONAUT_VERSION,
        "io.micronaut:micronaut-runtime:%s" % MICRONAUT_VERSION,
        "io.micronaut:micronaut-validation:%s" % MICRONAUT_VERSION,
        "io.micronaut:micronaut-graal:%s" % MICRONAUT_VERSION,
        "io.micronaut:micronaut-http:%s" % MICRONAUT_VERSION,
        "io.micronaut:micronaut-http-client-core:%s" % MICRONAUT_VERSION,
        "io.micronaut:micronaut-http-client:%s" % MICRONAUT_VERSION,
        "io.micronaut:micronaut-http-netty:%s" % MICRONAUT_VERSION,
        "io.micronaut:micronaut-http-server-netty:%s" % MICRONAUT_VERSION,
        "io.micronaut:micronaut-jackson-core:%s" % MICRONAUT_VERSION,
        "io.micronaut:micronaut-jackson-databind:%s" % MICRONAUT_VERSION,
        "io.micronaut:micronaut-management:%s" % MICRONAUT_VERSION,
        "io.micronaut.email:micronaut-email:1.2.1",
        "io.micronaut.email:micronaut-email-template:1.2.1",
        "io.micronaut.email:micronaut-email-sendgrid:1.2.1",
        "io.micronaut.gcp:micronaut-gcp-common:4.2.0",
        "io.micronaut.gcp:micronaut-gcp-logging:4.2.0",
        "io.micronaut.gcp:micronaut-gcp-tracing:4.2.0",
        "io.micronaut.gcp:micronaut-gcp-pubsub:4.2.0",
        "io.micronaut.gcp:micronaut-gcp-secret-manager:4.2.0",
        "io.micronaut.grpc:micronaut-grpc-runtime:3.2.0",
        "io.micronaut.grpc:micronaut-grpc-server-runtime:3.2.0",
        "io.micronaut.grpc:micronaut-grpc-client-runtime:3.2.0",
        "io.micronaut.security:micronaut-security-jwt:3.5.0",
        "io.micronaut.kotlin:micronaut-kotlin-extension-functions:3.2.2",
        "io.micronaut.kotlin:micronaut-kotlin-runtime:3.2.2",
        "io.netty:netty-buffer:%s" % NETTY_VERSION,
        "io.netty:netty-codec-dns:%s" % NETTY_VERSION,
        "io.netty:netty-codec-http2:%s" % NETTY_VERSION,
        "io.netty:netty-codec-http:%s" % NETTY_VERSION,
        "io.netty:netty-codec-redis:%s" % NETTY_VERSION,
        "io.netty:netty-codec-socks:%s" % NETTY_VERSION,
        "io.netty:netty-codec:%s" % NETTY_VERSION,
        "io.netty:netty-common:%s" % NETTY_VERSION,
        "io.netty:netty-handler-proxy:%s" % NETTY_VERSION,
        "io.netty:netty-handler:%s" % NETTY_VERSION,
        "io.netty:netty-resolver:%s" % NETTY_VERSION,
        "io.netty:netty-resolver-dns:%s" % NETTY_VERSION,
        "io.netty:netty-resolver-dns-classes-macos:%s" % NETTY_VERSION,
        "io.netty:netty-resolver-dns-native-macos:jar:osx-x86_64:%s" % NETTY_VERSION,
        "io.netty:netty-tcnative:%s" % TCNATIVE_VERSION,
        "io.netty:netty-tcnative-classes:%s" % TCNATIVE_VERSION,
        "io.netty:netty-tcnative-boringssl-static:%s" % TCNATIVE_VERSION,
        "io.netty:netty-transport-native-unix-common:%s" % NETTY_VERSION,
        "io.netty:netty-transport-classes-epoll:%s" % NETTY_VERSION,
        "io.netty:netty-transport-native-epoll:jar:linux-x86_64:%s" % NETTY_VERSION,
        "io.netty:netty-transport-classes-kqueue:%s" % NETTY_VERSION,
        "io.netty:netty-transport-native-kqueue:jar:osx-x86_64:%s" % NETTY_VERSION,
        "io.netty:netty-transport:%s" % NETTY_VERSION,
        "net.sourceforge.streamsupport:streamsupport:1.7.4",
        "net.sourceforge.streamsupport:streamsupport-cfuture:1.7.4",
        "org.apache.commons:commons-csv:1.9.0",
        "org.jetbrains:annotations:23.0.0",
        "org.jetbrains.kotlinx:atomicfu-js:0.17.2",
        "org.jetbrains.kotlin:kotlin-stdlib:%s" % KOTLIN_SDK_VERSION,
        "org.jetbrains.kotlin:kotlin-stdlib-jdk7:%s" % KOTLIN_SDK_VERSION,
        "org.jetbrains.kotlin:kotlin-stdlib-jdk8:%s" % KOTLIN_SDK_VERSION,
        "org.jetbrains.kotlin:kotlin-stdlib-js:%s" % KOTLIN_SDK_VERSION,
        "org.jetbrains.kotlin:kotlin-stdlib-wasm:%s" % KOTLIN_SDK_VERSION,
        "org.jetbrains.kotlinx:kotlinx-coroutines-core:1.6.1",
        "org.jetbrains.kotlinx:kotlinx-coroutines-core-js:1.6.1",
        "org.jetbrains.kotlinx:kotlinx-coroutines-core-jvm:1.6.1",
        "org.jetbrains.kotlinx:kotlinx-coroutines-jdk8:1.6.1",
        "org.jetbrains.kotlinx:kotlinx-coroutines-jdk9:1.6.1",
        "org.jetbrains.kotlinx:kotlinx-coroutines-guava:1.6.1",
        "org.jetbrains.kotlinx:kotlinx-coroutines-reactive:1.6.1",
        "org.jetbrains.kotlinx:kotlinx-coroutines-slf4j:1.6.1",
        "org.jetbrains.kotlinx:kotlinx-serialization-json:1.3.3",
        "org.jetbrains.kotlin-wrappers:kotlin-css:1.0.0-%s" % KWRAPPERS_VERSION,
        "org.jetbrains.kotlin-wrappers:kotlin-csstype:3.0.11-%s" % KWRAPPERS_VERSION,
        "org.jetbrains.kotlin-wrappers:kotlin-extensions:1.0.1-%s" % KWRAPPERS_VERSION,
        "org.jetbrains.kotlin-wrappers:kotlin-react:%s-%s" % (REACT_VERSION, KWRAPPERS_VERSION),
        "org.jetbrains.kotlin-wrappers:kotlin-react-core:%s-%s" % (REACT_VERSION, KWRAPPERS_VERSION),
        "org.jetbrains.kotlin-wrappers:kotlin-react-dom:%s-%s" % (REACT_VERSION, KWRAPPERS_VERSION),
        "org.jetbrains.kotlin-wrappers:kotlin-react-redux:7.2.6-%s" % KWRAPPERS_VERSION,
        "org.jetbrains.kotlin-wrappers:kotlin-redux:4.1.2-%s" % KWRAPPERS_VERSION,
        "org.jetbrains.kotlin-wrappers:kotlin-styled:5.3.5-%s" % KWRAPPERS_VERSION,
        "org.jetbrains.kotlin-wrappers:kotlin-history:5.3.0-%s" % KWRAPPERS_VERSION,
        "org.reactivestreams:reactive-streams:1.0.3",
        "org.slf4j:slf4j-api:1.7.36",
        "org.slf4j:jul-to-slf4j:1.7.36",
        "org.threeten:threetenbp:1.6.0",
        "org.yaml:snakeyaml:1.30",
        "jakarta.inject:jakarta.inject-api:2.0.1",
        "jakarta.persistence:jakarta.persistence-api:3.1.0",
        "javax.annotation:javax.annotation-api:1.3.2",
        "javax.validation:validation-api:2.0.1.Final",

        # Android Dependencies
        "com.android.support:appcompat-v7:26.1.0",
        "com.android.support.constraint:constraint-layout:1.0.2",
        "com.google.firebase:firebase-messaging:23.0.4",
    ] + INJECTED_JVM_ARTIFACTS + [
        maven.artifact(
            testonly = True,
            artifact = n.split(":")[1],
            group = n.split(":")[0],
            version = n.split(":")[2],
        )
        for n in TEST_ARTIFACTS
    ] + [
        maven.artifact(
            neverlink = True,
            artifact = n.split(":")[1],
            group = n.split(":")[0],
            version = n.split(":")[2],
        )
        for n in NEVERLINK_ARTIFACTS
     ],
    fetch_javadoc = True,
    fetch_sources = True,
    generate_compat_repositories = True,
    maven_install_json = "@//:maven_install.json",
    override_targets = dict(
        IO_GRPC_GRPC_KOTLIN_OVERRIDE_TARGETS.items() +
        IO_GRPC_GRPC_JAVA_OVERRIDE_TARGETS.items() + ({
            "org.junit.jupiter:junit-jupiter-api": "@org_junit_jupiter_junit_jupiter_api//jar",
            "org.junit.jupiter:junit-jupiter-engine": "@org_junit_jupiter_junit_jupiter_engine//jar",
            "org.junit.jupiter:junit-jupiter-params": "@org_junit_jupiter_junit_jupiter_params//jar",
            "org.junit.platform:junit-platform-commons": "@org_junit_platform_junit_platform_commons//jar",
            "org.junit.platform:junit-platform-console": "@org_junit_platform_junit_platform_console//jar",
            "org.junit.platform:junit-platform-engine": "@org_junit_platform_junit_platform_engine//jar",
            "org.junit.platform:junit-platform-launcher": "@org_junit_platform_junit_platform_launcher//jar",
            "org.junit.platform:junit-platform-suite-api": "@org_junit_platform_junit_platform_suite_api//jar",
        }).items()
    ),
    excluded_artifacts = [
        "com.squareup.okhttp:okhttp",
        "org.apache.logging.log4j:log4j-api",
        "org.apache.logging.log4j:log4j-to-slf4j",
    ],
    repositories = [
        "https://repo1.maven.org/maven2",
        "https://maven.google.com",
        "https://jcenter.bintray.com/",
        "https://repo.maven.apache.org/maven2",
        "https://jitpack.io",
    ],
    strict_visibility = True,
    version_conflict_policy = "pinned",
)

(ENABLE_ANDROID and android_sdk_repository(
    name = "androidsdk",
))

load("@maven//:defs.bzl", "pinned_maven_install")

pinned_maven_install()

load("@maven//:compat.bzl", "compat_repositories")

compat_repositories()

TOOLS_ANDROID_COMMIT = "0e864ba5a86958513658250de587416d8e17c481"

http_archive(
    name = "tools_android",
    repo_mapping = {
        "@com_google_code_gson_2_8_2": "@com_google_code_gson_gson",
    },
    sha256 = "57c50d6331ba578fc8adfcede20ef12b437cb4cc2edf60c852e4b834eefee5fc",
    strip_prefix = "tools_android-" + TOOLS_ANDROID_COMMIT,
    url = "https://github.com/bazelbuild/tools_android/archive/%s.tar.gz" % TOOLS_ANDROID_COMMIT,
)

load("@cgrindel_rules_spm//spm:defs.bzl", "spm_pkg", "spm_repositories")

spm_repositories(
    name = "spm",
    swift_version = SWIFT_VERSION,
    platforms = APPLE_PLATFORMS.split(" "),
    dependencies = [
        spm_pkg(
            "https://github.com/apple/swift-log.git",
            exact_version = "1.4.2",
            products = ["Logging"],
        ),
        spm_pkg(
            "https://github.com/daltoniam/Starscream.git",
            exact_version = "4.0.4",
            products = ["Starscream"],
        ),
        spm_pkg(
            "https://github.com/sendyhalim/Swime.git",
            exact_version = "3.1.0",
            products = ["Swime"],
        ),
        spm_pkg(
            "https://github.com/Moya/Moya.git",
            exact_version = "14.0.0",
            products = ["Moya"],
        ),
        spm_pkg(
            "https://github.com/sgammon/GetStream.git",
            exact_version = "2.2.5-b1",
            products = ["GetStream"],
        ),
        spm_pkg(
            "https://github.com/zenangst/Hue.git",
            exact_version = "5.0.1",
            products = ["Hue"],
        ),
    ],
)
