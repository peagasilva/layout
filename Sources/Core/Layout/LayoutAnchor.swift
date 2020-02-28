//
//  LayoutAnchor.swift
//  Layout
//
//  Created by Raphael Silva on 28/02/2020.
//  Copyright © 2020 peagasilva. All rights reserved.
//

import UIKit

public protocol LayoutAnchor {
    func constraint(equalTo anchor: Self, constant: CGFloat) -> NSLayoutConstraint
    func constraint(greaterThanOrEqualTo anchor: Self, constant: CGFloat) -> NSLayoutConstraint
    func constraint(lessThanOrEqualTo anchor: Self, constant: CGFloat) -> NSLayoutConstraint
}

// MARK: - NSLayoutAnchor Extension

extension NSLayoutAnchor: LayoutAnchor {}

// MARK: - Operators

public func +<Anchor: LayoutAnchor>(lhs: Anchor, rhs: CGFloat) -> (Anchor, CGFloat) {
    return (lhs, rhs)
}

public func -<Anchor: LayoutAnchor>(lhs: Anchor, rhs: CGFloat) -> (Anchor, CGFloat) {
    return (lhs, -rhs)
}

public func ==<Anchor: LayoutAnchor>(lhs: LayoutProperty<Anchor>, rhs: (Anchor, CGFloat)) {
    lhs.equal(to: rhs.0, offsetBy: rhs.1)
}

public func ==<Anchor: LayoutAnchor>(lhs: LayoutProperty<Anchor>, rhs: Anchor) {
    lhs.equal(to: rhs)
}

public func >=<Anchor: LayoutAnchor>(lhs: LayoutProperty<Anchor>, rhs: (Anchor, CGFloat)) {
    lhs.greaterThanOrEqual(to: rhs.0, offsetBy: rhs.1)
}

public func >=<Anchor: LayoutAnchor>(lhs: LayoutProperty<Anchor>, rhs: Anchor) {
    lhs.greaterThanOrEqual(to: rhs)
}

public func <=<Anchor: LayoutAnchor>(lhs: LayoutProperty<Anchor>, rhs: (Anchor, CGFloat)) {
    lhs.lessThanOrEqual(to: rhs.0, offsetBy: rhs.1)
}

public func <=<Anchor: LayoutAnchor>(lhs: LayoutProperty<Anchor>, rhs: Anchor) {
    lhs.lessThanOrEqual(to: rhs)
}
