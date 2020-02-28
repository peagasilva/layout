//
//  LayoutDimensionProperty.swift
//  Layout
//
//  Created by Raphael Silva on 28/02/2020.
//  Copyright © 2020 peagasilva. All rights reserved.
//

public struct LayoutDimensionProperty<Anchor: LayoutDimension> {
    let width: LayoutProperty<Anchor>
    let height: LayoutProperty<Anchor>
}
