//
//  LayoutProxy.swift
//  Layout
//
//  Created by Raphael Silva on 28/02/2020.
//  Copyright © 2020 peagasilva. All rights reserved.
//

import UIKit

public class LayoutProxy {
    public lazy var leading = property(with: view.leadingAnchor)
    public lazy var trailing = property(with: view.trailingAnchor)
    public lazy var left = property(with: view.leftAnchor)
    public lazy var right = property(with: view.rightAnchor)
    public lazy var top = property(with: view.topAnchor)
    public lazy var bottom = property(with: view.bottomAnchor)
    public lazy var centerX = property(with: view.centerXAnchor)
    public lazy var centerY = property(with: view.centerYAnchor)
    public lazy var width = property(with: view.widthAnchor)
    public lazy var height = property(with: view.heightAnchor)
    
    public lazy var size = LayoutDimensionProperty(width: width, height: height)

    private let view: UIView

    fileprivate init(view: UIView) {
        self.view = view
    }

    private func property<A: LayoutAnchor>(with anchor: A) -> LayoutProperty<A> {
        return LayoutProperty(anchor: anchor)
    }
}

// MARK: - UIView Extension

public extension UIView {
    func layout(using closure: (LayoutProxy) -> Void) {
        translatesAutoresizingMaskIntoConstraints = false
        closure(LayoutProxy(view: self))
    }
}
