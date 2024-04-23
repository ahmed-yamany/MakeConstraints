//
//  UIView+SizeConstraints.swift
//  Book Nexus
//
//  Created by Ahmed Yamany on 05/01/2023.
//

import UIKit

extension UIView {
    @discardableResult
    public 
    func widthConstraint(equalToConstant constant: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let const = widthAnchor.constraint(equalToConstant: constant)
        const.activate()
        return const
    }
    
    @discardableResult
    public
    func widthConstraint(greaterThanOrEqualToConstant constant: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let const = widthAnchor.constraint(greaterThanOrEqualToConstant: constant)
        const.activate()
        return const
    }
    
    @discardableResult
    public
    func widthConstraint(lessThanOrEqualToConstant constant: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let const = widthAnchor.constraint(lessThanOrEqualToConstant: constant)
        const.activate()
        return const
    }
    
    @discardableResult
    public func heightConstraint(equalToConstant constant: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let const = heightAnchor.constraint(equalToConstant: constant)
        const.activate()
        return const
    }
    
    @discardableResult
    public
    func heightConstraint(greaterThanOrEqualToConstant constant: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let const = heightAnchor.constraint(greaterThanOrEqualToConstant: constant)
        const.activate()
        return const
    }
    
    @discardableResult
    public
    func heightConstraint(lessThanOrEqualToConstant constant: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let const = heightAnchor.constraint(lessThanOrEqualToConstant: constant)
        const.activate()
        return const
    }
    
    @discardableResult
    public
    func equalSizeConstraints(_ constant: CGFloat) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return (widthConstraint(equalToConstant: constant), heightConstraint(equalToConstant: constant))
    }
    
    @discardableResult
    public
    func sizeConstraints(width: CGFloat, height: CGFloat) -> (width: NSLayoutConstraint, height: NSLayoutConstraint) {
        return (widthConstraint(equalToConstant: width), heightConstraint(equalToConstant: height))
    }
}
