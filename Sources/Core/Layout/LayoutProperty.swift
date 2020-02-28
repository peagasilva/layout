//
//  LayoutProperty.swift
//  Layout
//
//  Created by Raphael Silva on 28/02/2020.
//  Copyright © 2020 peagasilva. All rights reserved.
//

import UIKit

public struct LayoutProperty<Anchor: LayoutAnchor> {
    internal let anchor: Anchor
}

public extension LayoutProperty {
    @discardableResult
    func equal(to anotherAnchor: Anchor, offsetBy constant: CGFloat = 0, priority: UILayoutPriority = .required) -> NSLayoutConstraint {
        let constraint = anchor.constraint(equalTo: anotherAnchor, constant: constant)
        constraint.priority = priority
        constraint.isActive = true
        return constraint
    }

    @discardableResult
    func greaterThanOrEqual(to anotherAnchor: Anchor, offsetBy constant: CGFloat = 0, priority: UILayoutPriority = .required) -> NSLayoutConstraint {
        let constraint = anchor.constraint(greaterThanOrEqualTo: anotherAnchor, constant: constant)
        constraint.priority = priority
        constraint.isActive = true
        return constraint
    }

    @discardableResult
    func lessThanOrEqual(to anotherAnchor: Anchor, offsetBy constant: CGFloat = 0, priority: UILayoutPriority = .required) -> NSLayoutConstraint {
        let constraint = anchor.constraint(lessThanOrEqualTo: anotherAnchor, constant: constant)
        constraint.priority = priority
        constraint.isActive = true
        return constraint
    }
}

public extension LayoutProperty where Anchor: LayoutDimension {
    @discardableResult
    func equal(toConstant constant: CGFloat, priority: UILayoutPriority = .required) -> NSLayoutConstraint {
        let constraint = anchor.constraint(equalToConstant: constant)
        constraint.priority = priority
        constraint.isActive = true
        return constraint
    }

    @discardableResult
    func greaterThanOrEqual(toConstant constant: CGFloat, priority: UILayoutPriority = .required) -> NSLayoutConstraint {
        let constraint = anchor.constraint(greaterThanOrEqualToConstant: constant)
        constraint.priority = priority
        constraint.isActive = true
        return constraint
    }

    @discardableResult
    func lessThanOrEqual(toConstant constant: CGFloat, priority: UILayoutPriority = .required) -> NSLayoutConstraint {
        let constraint = anchor.constraint(lessThanOrEqualToConstant: constant)
        constraint.priority = priority
        constraint.isActive = true
        return constraint
    }
}
