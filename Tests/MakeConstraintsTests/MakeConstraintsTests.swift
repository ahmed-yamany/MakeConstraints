//
//  MakeConstraintsTests.swift
//  
//
//  Created by Ahmed Yamany on 23/04/2024.
//

import XCTest
@testable import MakeConstraints
import UIKit

final class MakeConstraintsTests: XCTestCase {
    
    var view: UIView!
    var button: UIButton!
    
    override func setUpWithError() throws {
        view = UIView()
        button = UIButton()
        view.addSubview(button)
    }

    override func tearDownWithError() throws {
        button.removeFromSuperview()
    }
    
    func test_widthConstraints() throws {
        let width = view.widthConstraint(equalToConstant: 100)
        XCTAssertTrue(width.isActive)
        XCTAssertTrue(width.constant == 100)
    }
    
    func test_heightConstraints() throws {
        let height = view.heightConstraint(equalToConstant: 100)
        XCTAssertTrue(height.isActive)
        XCTAssertTrue(height.constant == 100)
    }

    func test_sizeConstraints() throws {
        let (width, height) = view.sizeConstraints(width: 100, height: 100)
        XCTAssertTrue(width.isActive)
        XCTAssertTrue(height.isActive)
        XCTAssertTrue(width.constant == 100)
        XCTAssertTrue(height.constant == 100)
    }
}
