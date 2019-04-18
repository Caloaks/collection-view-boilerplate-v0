//  Vars.swift
//  The 'Ultimate' Collection View Boilerplate  ∙  1st commit Apr. 03, 2019  ∙  Created by Garth Snyder a.k.a. gladiusKatana ⚔️

import UIKit

var globalKeyWindow = UIApplication.shared.keyWindow!

var navController: UINavigationController? = UINavigationController()

var cellGap = CGFloat(0)          // if nonzero, do NOT make this smaller than: 0.5 (iphone7), or else lines drawn inconsistently
//var testNum = 24                // only for testing, in the below vars (may not be used on any given commit)


//--------------------------------------------------------------------------------------------
//var vcLayoutOne = CCVFlowLayout(rows: 24, cols: 12, lockedHeaderRows: 1, lockedHeaderSections: 1,
//                                cellWidth: nil, cellHeight: nil,
//                                autoFitWScale: 0.95, autoFitHScale: 0.95,  //* auto-fit scale factors ignored if width/height non-nil
//                                hSpace: cellGap, vSpace: cellGap,        //* if auto-fit scale factors are nil, value of 1.0 substituted
//                                loadsHorizontally: false,                // * if loadsHorizontally is true, 'rows' look like columns
//                                squareCellMode: .noAutoSquare)           // * why no autocomplete for enum cases?
//
//var vcLayoutTwo = CCVFlowLayout(rows: 8, cols: 24, lockedHeaderRows: 1, lockedHeaderSections: 1,
//                                cellWidth: 100, cellHeight: 80,
//                                autoFitWScale: 0.8, autoFitHScale: 0.8,
//                                hSpace: cellGap, vSpace: cellGap,
//                                loadsHorizontally: false,
//                                squareCellMode: .noAutoSquare)


var vcLayoutOne = CCVFlowLayout(rows: 7, cols: 7, lockedHeaderRows: 0, lockedHeaderSections: 1,      //from the calendar project
                                cellWidth: nil, cellHeight: nil,
                                autoFitWScale: nil, autoFitHScale: nil,       //* auto-fit scale factors ignored if width/height non-nil
                                hSpace: cellGap, vSpace: cellGap,             //* if auto-fit scale factors are nil, value of 1.0 substituted
                                loadsHorizontally: true,       //* ❗️ if loadsHorizontally is true, 'rows' look like columns
                                squareCellMode: .noAutoSquare) //* why no autocomplete for enum cases?

var vcLayoutTwo = CCVFlowLayout(rows: 4, cols: 3, lockedHeaderRows: 0, lockedHeaderSections: 0,    //from the calendar project
                                 cellWidth: nil, cellHeight: nil,
                                 autoFitWScale: 1, autoFitHScale: 1,
                                 hSpace: cellGap, vSpace: cellGap,
                                 loadsHorizontally: false,
                                 squareCellMode: .noAutoSquare)

var viewControllerOne = CollectionVC(navBarTitle: "Collection View 1", colourIndex: 1, collectionViewLayout: vcLayoutOne)
var viewControllerTwo = CollectionVC(navBarTitle: "Collection View 2", colourIndex: 0, collectionViewLayout: vcLayoutTwo)
//--------------------------------------------------------------------------------------------


var currentTopVC : CollectionVC = CollectionVC(navBarTitle: "temporary value to satisfy init", colourIndex: 0, collectionViewLayout: vcLayoutOne)
var backgroundVC = UIViewController()

var statusBar = UIView();           var navbarTitleLabel = UILabel();       var testRectanglelayer = CAShapeLayer()

var currentOrientation = "orientation (landscape or portrait) for prepare-layout logic"
var previousOrientation = "previous orientation (landscape or portrait) for prepare-layout logic"
var launchOrientation = "orientation at the moment of launch"

var modelName = "device you're running on"
var phones = ["iPhone4", "iPhone 4s", "iPhone 5", "iPhone 5c", "iPhone 5s", "iPhone 6", "iPhone 6 Plus", "iPhone 6s", "iPhone 6s Plus", "iPhone 7", "iPhone 7 Plus", "iPhone SE", "iPhone 8", "iPhone 8 Plus", "iPhone X", "iPhone XS", "iPhone XS Max", "iPhone XR"]

var xOffSet = CGFloat(0);           var yOffSet = CGFloat(0)

var statusBarHeight = 0.0;          var lastStatusBarHeight = 0.0
var navBarHeight = 0.0;             var launchWidth = 0.0

var rePresentedVCFromButton = true; var willPresentVCAgainBecauseAppJustEnteredForeground = false
