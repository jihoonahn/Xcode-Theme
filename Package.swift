// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "xcodeTheme",
    platforms: [.macOS(.v10_15)],
    products: [
        .executable(name: "install", targets: ["Install"]),
        .executable(name: "uninstall", targets: ["Uninstall"])
    ],
    dependencies: [
        .package(url: "https://github.com/pelagornis/plfile.git", from: "1.0.5")
    ],
    targets: [
        .executableTarget(
            name: "Install",
            dependencies: [
                .product(name: "File", package: "plfile")
            ]
        ),
        .executableTarget(
            name: "Uninstall",
            dependencies: [
                .product(name: "File", package: "plfile")
            ]
        )
    ]
)
