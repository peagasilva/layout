//
//  LayoutSpec.swift
//  Layout
//
//  Created by Raphael Silva on 01/04/19.
//  Copyright © 2019 peagasilva. All rights reserved.
//

import Quick
import Nimble
@testable import Layout

class LayoutSpec: QuickSpec {
    override func spec() {
        describe("LayoutSpec") {
            it("works") {
                expect(Layout.name) == "Layout"
            }
        }
    }
}
