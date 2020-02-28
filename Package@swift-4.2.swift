// swift-tools-version:4.2
//
//  Layout.swift
//  Layout
//
//  Created by Raphael Silva on 01/04/19.
//  Copyright © 2019 peagasilva. All rights reserved.
//

import PackageDescription

let package = Package(
    name: "Layout",
    products: [
        .library(
            name: "Layout",
            targets: ["Layout"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "Layout",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "LayoutTests",
            dependencies: ["Layout"],
            path: "Tests"
        ),
    ],
    swiftLanguageVersions: [.v4, .v4_2]
)
