//
//  AnchoredConstraints.swift
//
//
//  Created by Ahmed Yamany on 23/04/2024.
//

import UIKit

/**
 A structure to store constraints for the edges and size of a view.
 */
public struct AnchoredConstraints {
    public var top: NSLayoutConstraint?
    public var leading: NSLayoutConstraint?
    public var bottom: NSLayoutConstraint?
    public var trailing: NSLayoutConstraint?
    public var centerX: NSLayoutConstraint?
    public var centerY: NSLayoutConstraint?
    public var width: NSLayoutConstraint?
    public var height: NSLayoutConstraint?
    
    public var allCases: [NSLayoutConstraint?] {
        [top, leading, bottom, trailing, centerX, centerY, width, height]
    }
}

public extension AnchoredConstraints {
    func activateAll() {
      allCases.forEach { $0?.isActive = true }
    }
    
    func deActivateAll() {
      allCases.forEach { $0?.isActive = false }
    }
}

public extension NSLayoutConstraint {
    func activate() {
        isActive = true
    }
    
    func deActivate() {
        isActive = false
    }
}
