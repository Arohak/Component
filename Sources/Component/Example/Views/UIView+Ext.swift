//
//  File.swift
//  
//
//  Created by Ara Hakobyan on 26.06.21.
//

import UIKit

struct Layout<T: AnyObject> {
    let anchor: NSLayoutAnchor<T>
    var constant: CGFloat = 0
    var multiplier: CGFloat = 0
}

extension UIView {
    
    func anchors(top: Layout<NSLayoutYAxisAnchor>? = nil,
                 left: Layout<NSLayoutXAxisAnchor>? = nil,
                 right: Layout<NSLayoutXAxisAnchor>? = nil,
                 bottom: Layout<NSLayoutYAxisAnchor>? = nil,
                 centerX: Layout<NSLayoutXAxisAnchor>? = nil,
                 centerY: Layout<NSLayoutYAxisAnchor>? = nil,
                 height: CGFloat? = nil,
                 width: CGFloat? = nil)
    {
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top { topAnchor.constraint(equalTo: top.anchor, constant: top.constant).isActive = true }
        if let left = left { leftAnchor.constraint(equalTo: left.anchor, constant: left.constant).isActive = true }
        if let right = right { rightAnchor.constraint(equalTo: right.anchor, constant: -right.constant).isActive = true }
        if let bottom = bottom { bottomAnchor.constraint(equalTo: bottom.anchor, constant: -bottom.constant).isActive = true }
        if let centerX = centerX { centerXAnchor.constraint(equalTo: centerX.anchor, constant: centerX.constant).isActive = true }
        if let centerY = centerY { centerYAnchor.constraint(equalTo: centerY.anchor, constant: centerY.constant).isActive = true }
        if let height = height { heightAnchor.constraint(equalToConstant: height).isActive = true }
        if let width = width { widthAnchor.constraint(equalToConstant: width).isActive = true }
    }
}
