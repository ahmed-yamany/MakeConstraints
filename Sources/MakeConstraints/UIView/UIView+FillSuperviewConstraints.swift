//
//  UIView+FillSuperviewConstraints.swift
//  Book Nexus
//
//  Created by Ahmed Yamany on 05/01/2023.
//

import UIKit

extension UIView {
    /**
     Fills the view within its superview with optional padding on all sides.
     
     - Parameters:
     - padding: The padding to apply on all sides of the view (default is UIEdgeInsets.zero).
     */
    @discardableResult
    public
    func fillSuperview(
        padding: UIEdgeInsets = .zero
    ) -> (top: NSLayoutConstraint, bottom: NSLayoutConstraint, left: NSLayoutConstraint, right: NSLayoutConstraint) {
        let y = self.fillYSuperView(paddingTop: padding.top, paddingBottom: padding.bottom)
        let x = self.fillXSuperView(paddingLeft: padding.left, paddingRight: padding.right)
        return (y.top, y.bottom, x.left, x.right)
    }
    
    /**
     Fills the view horizontally within its superview with optional padding on the leading and trailing sides.
     
     - Parameters:
     - paddingLeft: The padding value to apply on the leading side of the view (default is 0).
     - paddingRight: The padding value to apply on the trailing side of the view (default is 0).
     */
    @discardableResult
    public
    func fillXSuperView(
        paddingLeft: CGFloat = 0,
        paddingRight: CGFloat = 0
    ) -> (left: NSLayoutConstraint, right: NSLayoutConstraint) {
        translatesAutoresizingMaskIntoConstraints = false
        let left = leadingAnchor.constraint(equalTo: superview!.leadingAnchor, constant: paddingLeft)
        let right = trailingAnchor.constraint(equalTo: superview!.trailingAnchor, constant: -paddingRight)
        [left, right].activate()
        return (left, right)
    }
    
    /**
     Fills the view vertically within its superview with optional padding on the top and bottom sides.
     
     - Parameters:
     - paddingTop: The padding value to apply on the top side of the view (default is 0).
     - paddingBottom: The padding value to apply on the bottom side of the view (default is 0).
     */
    @discardableResult
    public
    func fillYSuperView(
        paddingTop: CGFloat = 0,
        paddingBottom: CGFloat = 0
    ) -> (top: NSLayoutConstraint, bottom: NSLayoutConstraint) {
        translatesAutoresizingMaskIntoConstraints = false
        let top = topAnchor.constraint(equalTo: superview!.topAnchor, constant: paddingTop)
        let bottom = bottomAnchor.constraint(equalTo: superview!.bottomAnchor, constant: -paddingBottom)
        [top, bottom].activate()
        return (top, bottom)
    }
}

extension Array where Element == NSLayoutConstraint {
    func activate() {
        forEach { $0.isActive = true }
    }
}
