//  Colours.swift
//  The 'Ultimate' Collection View Boilerplate
//  Created by Garth Snyder on 2019-02-07.  //  Copyright © 2019 Garth Snyder. All rights reserved.

import UIKit


extension UIColor {
    static func rgb(_ red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
}


let num = CGFloat(42)
var headerColour = UIColor.rgb(num, green: num, blue: num, alpha: 1) //UIColor.darkGray
var cellDefaultColour = navyBlue


var randomColours = [UIColor.red.cgColor, UIColor.orange.cgColor, UIColor.yellow.cgColor, UIColor.green.cgColor, UIColor.blue.cgColor, UIColor.purple.cgColor, UIColor.white.cgColor]


var grayPointZeroFive = UIColor.rgb(0, green: 0, blue: 0, alpha: 0.03)
var grayOne = UIColor.rgb(0, green: 0, blue: 0, alpha: 0.1)
var grayTwo = UIColor.rgb(0, green: 0, blue: 0, alpha: 0.2)
var graySeven = UIColor.rgb(0, green: 0, blue: 0, alpha: 0.7)


var platinum = UIColor.rgb(214, green: 214, blue: 214, alpha: 1)
var platinumMedium = UIColor.rgb(214, green: 214, blue: 255, alpha: 0.8)
var platinumUltraLite = UIColor.rgb(214, green: 214, blue: 255, alpha: 0.45)
var platinumBarelyThere = UIColor.rgb(214, green: 214, blue: 255, alpha: 0.1)


var icyBlue = UIColor.rgb(150, green: 180, blue: 220, alpha: 1)
var darkerIcyBlue = UIColor.rgb(100, green: 140, blue: 200, alpha: 1)
var navyBlue = UIColor.rgb(0, green: 36, blue: 82, alpha: 1)    //(30, green: 40, blue: 160, alpha: 1)


var skyBackgroundImage = UIImage(named: "skyB")?.withRenderingMode(.alwaysOriginal)
var skyBackgroundImageColour = UIColor(patternImage: skyBackgroundImage!)

