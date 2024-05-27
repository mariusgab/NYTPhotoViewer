// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "NYTPhotoViewer",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "NYTPhotoViewer",
            targets: ["NYTPhotoViewer", "NYTPhotoViewerGIF"]
            ),
    ],
    dependencies: [
        .package(url: "https://github.com/pinterest/PINRemoteImage.git", exact: "3.0.1")
    ],
    targets: [
        .target(
            name: "NYTPhotoViewer",
            path: "NYTPhotoViewer"
        ),
        .target(
            name: "NYTPhotoViewerGIF",
            dependencies: ["PINRemoteImage"],
            path: "SourceSymLink",
            cSettings: [
              .define("ANIMATED_GIF_SUPPORT", to: "1")
            ]
        )
    ]
)
