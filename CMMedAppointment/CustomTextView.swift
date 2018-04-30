//
//  CustomTextView.swift
//  CMMedAppointment
//
//  Created by Unni K S on 4/26/18.
//  Copyright © 2018 calmove. All rights reserved.
//

import UIKit

class CustomTextView: UIView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var placeHolderLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var lineView: LineView!
    
    @IBOutlet weak var labelBottomSpacing: NSLayoutConstraint!
    @IBInspectable var PlaceHolderText: String! {
        get {
            return placeHolderLabel.text
        }
        set {
            placeHolderLabel.text = newValue
        }
    }
    
    @IBInspectable var Text: String! {
        get {
            return textField.text
        }
        set {
            textField.text = newValue
            movePlaceHolder(placeHolderText: newValue)
        }
    }
    
    
    
    @IBInspectable var secureText:Bool  {
        get {
            return textField.isSecureTextEntry
        }
        set {
            textField.isSecureTextEntry = newValue
        }
    }
    
    @IBInspectable var textColor:UIColor! {
        get {
            return textField.textColor
        }
        set {
            textField.textColor = newValue
            placeHolderLabel.textColor = newValue
        }
    }
    
    @IBInspectable var bgColor:UIColor!  {
        get {
            return contentView.backgroundColor!
        }
        set {
            contentView.backgroundColor = newValue
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("CustomTextView", owner: self, options: nil)
        guard let content = contentView else { return }
        content.frame = self.bounds
        content.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        self.addSubview(content)
        
        let notifyCenter = NotificationCenter.default
        notifyCenter.addObserver(self, selector: #selector(self.onKeyboardShow), name: .UIKeyboardDidShow, object: nil)
        notifyCenter.addObserver(self, selector: #selector(self.onKeyboardHide), name: .UIKeyboardDidHide, object: nil)
    }
    
    
    @objc func onKeyboardShow(notification:NSNotification ) {
        movePlaceHolder(placeHolderText: textField.text!)
    }

    @objc func onKeyboardHide(notification:NSNotification ) {
        movePlaceHolder(placeHolderText: textField.text!)
    }
    
    @IBAction func onTextChanged(_ sender: Any) {
        movePlaceHolder(placeHolderText: textField.text!)
    }
    
    func movePlaceHolder(placeHolderText:String){
        if placeHolderText.count == 0 {
            labelBottomSpacing.constant = 0
            placeHolderLabel.font = UIFont.systemFont(ofSize: 17)
        }
        else {
            labelBottomSpacing.constant = -25
            placeHolderLabel.font = UIFont.systemFont(ofSize: 12)
        }
    }
    
    @IBAction func onEditEnd(_ sender: Any) {
        lineView.lineWidth = 1
        onTextChanged(sender)
    }
    
    @IBAction func onEditBegin(_ sender: Any) {
        lineView.lineWidth = 2
        onTextChanged(sender)
    }
    
    func makeFirstResponder() {
        textField.becomeFirstResponder()
    }
    
}
