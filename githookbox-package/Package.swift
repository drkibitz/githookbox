import PackageDescription

let package = Package(

    name: "iosui-githookbox2",

    targets: [
        Target(
            name: "githookbox",
            dependencies: [.Target(name: "GitHookKit")]
        ),
        Target(
            name: "GitHookKit"
        )
    ]
)
