//
//  LineView.swift
//  CMMedAppointment
//
//  Created by Unni K S on 4/26/18.
//  Copyright © 2018 calmove. All rights reserved.
//

import UIKit
@IBDesignable
class LineView: UIView {
    
    @IBInspectable var lineWidth:CGFloat = 1.0 {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    @IBInspectable var lineColor:UIColor = .white {
        didSet {
            self.setNeedsDisplay()
        }
    }
    override func awakeFromNib() {
        self.backgroundColor = .clear
    }
    
    // Only override draw: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        let context = UIGraphicsGetCurrentContext()
        context!.setStrokeColor(lineColor.cgColor)
        context!.setLineWidth(lineWidth)
        context!.beginPath()
        context!.move(to: CGPoint(x: rect.minX, y: rect.minY))
        context!.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        context!.strokePath()
    }
    
}
