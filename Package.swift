// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "LumiProviderAgentLoop",
    platforms: [.macOS("14.0"), .iOS(.v17)],
    products: [
        .library(name: "ProviderAgentLoop", targets: ["ProviderAgentLoop"]),
    ],
    dependencies: [
        .package(url: "https://github.com/lumi-softworks/LumiProviders.git", from: "1.26.0"),
        .package(url: "https://github.com/lumi-softworks/LumiKitAgentTool.git", from: "1.0.4"),
        .package(url: "https://github.com/lumi-softworks/LumiProviderMessage.git", from: "1.0.0"),
        .package(url: "https://github.com/lumi-softworks/LumiKitLLM.git", from: "1.0.1"),
        .package(url: "https://github.com/lumi-softworks/LumiProviderLLMManager.git", from: "1.0.0"),
        .package(url: "https://github.com/lumi-softworks/LumiProviderToolManager.git", from: "1.0.2"),
        .package(url: "https://github.com/lumi-softworks/LumiProviderMessageStreaming.git", from: "1.0.0"),
        .package(url: "https://github.com/lumi-softworks/LumiProviderLifecycleHooks.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "ProviderAgentLoop",
            dependencies: [
                .product(name: "KitAgentTool", package: "LumiKitAgentTool"),
                .product(name: "ProviderMessage", package: "LumiProviderMessage"),
                .product(name: "KitLLM", package: "LumiKitLLM"),
                .product(name: "ProviderLLMManager", package: "LumiProviderLLMManager"),
                .product(name: "ProviderToolManager", package: "LumiProviderToolManager"),
                .product(name: "ProviderMessageStreaming", package: "LumiProviderMessageStreaming"),
                .product(name: "ProviderConversation", package: "LumiProviders"),
                .product(name: "ProviderLifecycleHooks", package: "LumiProviderLifecycleHooks"),
            ],
            path: "Sources/ProviderAgentLoop"
        ),
        .testTarget(
            name: "ProviderAgentLoopTests",
            dependencies: ["ProviderAgentLoop"]
        )
    ]
)
