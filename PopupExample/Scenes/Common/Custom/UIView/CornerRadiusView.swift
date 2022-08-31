//
//  CornerRadiusView.swift
//  PopupExample
//
//  Created by Jaewon on 2022/08/31.
//

import UIKit

@IBDesignable
class CornerRadiusView: UIView {
    
    @IBInspectable var radius: CGFloat = 0.0
    
    override func layoutSubviews() {
        self.layer.cornerRadius = self.radius
    }
}
