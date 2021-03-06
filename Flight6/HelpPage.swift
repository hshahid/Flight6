//
//  HelpPage.swift
//  Flight6
//
//  Created by Hashma Shahid on 6/21/16.
//  Copyright (c) 2016 Hashma Shahid. All rights reserved.
//

import UIKit

class HelpPage: UIViewController {
    
    @IBOutlet weak var homeBtn: UIButton!
    @IBOutlet weak var aboutDetail: UILabel!
    @IBOutlet weak var aboutLabel: UILabel!
    //border and corner settings for button
    let borderAlpha : CGFloat = 0.7
    let cornerRadius : CGFloat = 5.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //set background color and style of "back to home" button
        homeBtn.backgroundColor = UIColor.clearColor()
        homeBtn.layer.borderWidth = 1.0
        homeBtn.layer.borderColor = UIColor(white: 1.0, alpha: borderAlpha).CGColor
        homeBtn.layer.cornerRadius = cornerRadius
        //start and end color of gradient
        let startColor = UIColor.flatNavyBlueColorDark()
        let endColor = UIColor(hue: 0.9528, saturation: 0.4, brightness: 1, alpha: 1.0) /* #ff759d */
        //set background gradient
        setTableViewBackgroundGradient(startColor, bottomColor: endColor);
        //add labels and buttons on top of the main view
        view.addSubview(aboutLabel)
        view.addSubview(aboutDetail)
        view.addSubview(homeBtn)
    }
    
    //function to set the background gradient
    func setTableViewBackgroundGradient(topColor: UIColor, bottomColor: UIColor){
        
        let gradientBackgroundColors = [topColor.CGColor, bottomColor.CGColor]
        let gradientLocations = [0.0,1.0]
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientBackgroundColors
        gradientLayer.locations = gradientLocations
        
        gradientLayer.frame = view.bounds
        let backgroundView = UIView(frame: view.bounds)
        backgroundView.layer.insertSublayer(gradientLayer, atIndex: 0)
        view.addSubview(backgroundView)
        
        
    }
    


}
