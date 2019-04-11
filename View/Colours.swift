//  Colours.swift
//  The 'Ultimate' Collection View Boilerplate  ∙  1st commit Apr. 03, 2019  ∙  Created by Garth Snyder a.k.a. gladiusKatana ⚔️

import UIKit


let NUM = CGFloat(42)
var headerColour = UIColor.COOOKIE(NUM, g: NUM, b: NUM, a: 1) //why is this method called cookie? well, https://www.youtube.com/watch?v=_OKGUAbpj5k
var cellDefaultColour = navyBlue



var grayTwo = UIColor.COOOKIE(0, g: 0, b: 0, a: 0.2)
var graySeven = UIColor.COOOKIE(0, g: 0, b: 0, a: 0.7)

var icyBlue = UIColor.COOOKIE(150, g: 180, b: 220, a: 1)
var navyBlue = UIColor.COOOKIE(0, g: 36, b: 82, a: 1)

var platinum = UIColor.COOOKIE(214, g: 214, b: 214, a: 1)
//(30, green: 40, blue: 160, alpha: 1) looked ok too


var skyBackgroundImage = UIImage(named: "skyB")?.withRenderingMode(.alwaysOriginal)
var skyBackgroundImageColour = UIColor(patternImage: skyBackgroundImage!)


var randomColours = [UIColor.red.cgColor, UIColor.orange.cgColor, UIColor.yellow.cgColor, UIColor.green.cgColor, UIColor.blue.cgColor, UIColor.purple.cgColor, UIColor.white.cgColor]



extension UIColor {
    static func COOOKIE(_ r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) -> UIColor {
        return UIColor(red: r/255, green: g/255, blue: b/255, alpha: a)
    }
}
