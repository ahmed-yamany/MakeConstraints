//
//  UIView+SizeConstraints.swift
//  Book Nexus
//
//  Created by Ahmed Yamany on 05/01/2023.
//

import UIKit

extension UIView {
    /**
     Creates a width constraint for the view with the specified constant.
     
     - Parameters:
     - constant: The constant value for the width constraint.
     
     - Returns: The created `NSLayoutConstraint` for the width constraint.
     */
    @discardableResult
    public func widthConstraints(_ constant: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let const = widthAnchor.constraint(equalToConstant: constant)
        const.isActive = true
        return const
    }
    
    /**
     Creates a height constraint for the view with the specified constant.
     
     - Parameters:
     - constant: The constant value for the height constraint.
     
     - Returns: The created `NSLayoutConstraint` for the height constraint.
     */
    @discardableResult
    public func heightConstraints(_ constant: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let const = heightAnchor.constraint(equalToConstant: constant)
        const.isActive = true
        return const
    }
    
    /**
     Creates equal width and height constraints for the view with the specified constant.
     
     - Parameters:
     - constant: The constant value for both width and height constraints.
     */
    public func equalSizeConstraints(_ constant: CGFloat) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return (widthConstraints(constant), heightConstraints(constant))
    }
    
    /**
     Creates width and height constraints for the view with specified width and height constants.
     
     - Parameters:
     - width: The constant value for the width constraint.
     - height: The constant value for the height constraint.
     */
    public func sizeConstraints(width: CGFloat, height: CGFloat) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return (widthConstraints(width), heightConstraints(height))
    }
}
