//
//  Utils.swift
//  CMMedAppointment
//
//  Created by Unni K S on 4/24/18.
//  Copyright © 2018 calmove. All rights reserved.
//

import Foundation
import FontIcons

public extension UIButton {
    
    func setFontIcon(iconName:FontEnum, sizeFactor:CGFloat = 2.75) {
        let width = self.frame.width / sizeFactor
        let size = CGSize(width: width, height: width)
        self.setImage(UIImage(icon: iconName, size: size), for: UIControlState.normal)
        alignTextBelow()
    }
    
    func setRoundButtonWith(iconName:FontEnum) {
        setFontIcon(iconName:iconName, sizeFactor:2.0)
        setBorder()
    }
    
    func setBorder() {
        self.layer.cornerRadius = 8.0
        self.layer.borderWidth = 2.0
        self.layer.borderColor = UIColor.white.cgColor
    }
    
    func alignTextBelow(spacing: CGFloat = 4.0) {
        if let image = self.imageView?.image {
            let imageSize: CGSize = image.size
            self.titleEdgeInsets = UIEdgeInsetsMake(spacing, -imageSize.width, -(imageSize.height), 0.0)
            let labelString = NSString(string: self.titleLabel!.text!)
            let titleSize = labelString.size(withAttributes: [NSAttributedStringKey.font: self.titleLabel!.font])
            self.imageEdgeInsets = UIEdgeInsetsMake(-(titleSize.height + spacing), 0.0, 0.0, -titleSize.width)
        }
    }
    
}

class Utils {
    static let sharedInstance = Utils()
    let defaults = UserDefaults.standard
    private init() { }
    var isLoggedIn:Bool {
        get {
            return defaults.bool(forKey: "LoggedIn")
        }
        set(newVal) {
            defaults.set(newVal, forKey: "LoggedIn")
        }
    }
    
    
}
