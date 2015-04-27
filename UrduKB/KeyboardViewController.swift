//
//  KeyboardViewController.swift
//  UrduKB
//
//  Created by PanaCloud on 4/27/15.
//  Copyright (c) 2015 self. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
            // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Alif Starts
        let alifButton = UIButton.buttonWithType(.System)as UIButton
        alifButton.frame = CGRectMake(280, 0, 40, 40)
        let alifImage = UIImage(named: "alif.png")
        alifButton.setBackgroundImage(alifImage, forState: .Normal)
        alifButton.addTarget(self, action: "alifPressed", forControlEvents: .TouchUpInside)
        self.view.addSubview(alifButton)
       
         // Alif Ends
        
        // AlifMadh Starts
        let alifMadhButton = UIButton.buttonWithType(.System)as UIButton
        alifMadhButton.frame = CGRectMake(240, 0, 40, 40)
        let alifMadhImage = UIImage(named: "AlifMadh.png")
        alifMadhButton.setBackgroundImage(alifMadhImage, forState: .Normal)
        alifMadhButton.addTarget(self, action: "alifMadhPressed", forControlEvents: .TouchUpInside)
        self.view.addSubview(alifMadhButton)
        
        // AlifMadh Ends

        //Bay Starts
        let bay = UIButton.buttonWithType(.System)as UIButton
        bay.frame = CGRectMake(200, 0, 40, 40)
        let bayImage = UIImage(named: "Bay.png")
        bay.setBackgroundImage(bayImage, forState: .Normal)
        bay.addTarget(self, action: "bayPressed", forControlEvents: .TouchUpInside)
        self.view.addSubview(bay)
        //Bay Ends
        
        //Pay Starts
        let pay = UIButton.buttonWithType(.System)as UIButton
        pay.frame = CGRectMake(160, 0, 40, 40)
        let payImage = UIImage(named: "Pay.png")
        pay.setBackgroundImage(payImage, forState: .Normal)
        pay.addTarget(self, action: "payPressed", forControlEvents: .TouchUpInside)
        self.view.addSubview(pay)
        //Pay Ends
        
        
        //Taay Starts
        let taay = UIButton.buttonWithType(.System)as UIButton
        taay.frame = CGRectMake(120, 0, 40, 40)
        let taayImage = UIImage(named: "Taay.png")
        taay.setBackgroundImage(taayImage, forState: .Normal)
        taay.addTarget(self, action: "taayPressed", forControlEvents: .TouchUpInside)
        self.view.addSubview(taay)
        //Taay Ends
        
        //Teay Starts
        let teay = UIButton.buttonWithType(.System)as UIButton
        teay.frame = CGRectMake(80, 0, 40, 40)
        let teayImage = UIImage(named: "Teay.png")
        teay.setBackgroundImage(teayImage, forState: .Normal)
        teay.addTarget(self, action: "teayPressed", forControlEvents: .TouchUpInside)
        self.view.addSubview(teay)
        //Teay Ends
        
        //BackSpace Starts
        let backspace = UIButton.buttonWithType(.System)as UIButton
        backspace.frame = CGRectMake(0, 0, 80, 40)
        let backSpaceImage = UIImage(named: "backspace.png")
        backspace.setBackgroundImage(backSpaceImage, forState: .Normal)
        backspace.addTarget(self, action: "backspacePressed", forControlEvents: .TouchUpInside)
        self.view.addSubview(backspace)
        //BackSpace Ends

        // Perform custom UI setup here
        self.nextKeyboardButton = UIButton.buttonWithType(.System) as UIButton
        
        self.nextKeyboardButton.setTitle(NSLocalizedString("Next Keyboard", comment: "Title for 'Next Keyboard' button"), forState: .Normal)
        self.nextKeyboardButton.sizeToFit()
        self.nextKeyboardButton.setTranslatesAutoresizingMaskIntoConstraints(false)
    
        self.nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside)
        
        self.view.addSubview(self.nextKeyboardButton)
    
        var nextKeyboardButtonLeftSideConstraint = NSLayoutConstraint(item: self.nextKeyboardButton, attribute: .Left, relatedBy: .Equal, toItem: self.view, attribute: .Left, multiplier: 1.0, constant: 0.0)
        var nextKeyboardButtonBottomConstraint = NSLayoutConstraint(item: self.nextKeyboardButton, attribute: .Bottom, relatedBy: .Equal, toItem: self.view, attribute: .Bottom, multiplier: 1.0, constant: 0.0)
        self.view.addConstraints([nextKeyboardButtonLeftSideConstraint, nextKeyboardButtonBottomConstraint])
    }
    func alifPressed(){
    var alifProxy = textDocumentProxy as UITextDocumentProxy
        alifProxy.insertText("ا")
    }
    func alifMadhPressed(){
        var alifMadhProxy = textDocumentProxy as UITextDocumentProxy
        alifMadhProxy.insertText("آ")
    }

    func bayPressed(){
        var bayProxy = textDocumentProxy as UITextDocumentProxy
        bayProxy.insertText("ب")
    }
    func payPressed(){
        var payProxy = textDocumentProxy as UITextDocumentProxy
        payProxy.insertText("ب")
    }
    func taayPressed(){
        var bayProxy = textDocumentProxy as UITextDocumentProxy
        bayProxy.insertText("ب")
    }
    func teayPressed(){
        var TeayProxy = textDocumentProxy as UITextDocumentProxy
        TeayProxy.insertText("ب")
    }
    func backspacePressed(){
        var backspace = textDocumentProxy as UITextDocumentProxy
        backspace.deleteBackward()
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput) {
        // The app has just changed the document's contents, the document context has been updated.
    
        var textColor: UIColor
        var proxy = self.textDocumentProxy as UITextDocumentProxy
        if proxy.keyboardAppearance == UIKeyboardAppearance.Dark {
            textColor = UIColor.whiteColor()
        } else {
            textColor = UIColor.blackColor()
        }
        self.nextKeyboardButton.setTitleColor(textColor, forState: .Normal)
    }

}
