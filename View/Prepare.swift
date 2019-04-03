//  Prepare.swift
//  The 'Ultimate' Collection View Boilerplate
//  Created by Garth Snyder on 2019-02-07.  //  Copyright © 2019 Garth Snyder. All rights reserved.

import UIKit

extension CCVFlowLayout {
    
    override func prepare() {                   //print("---------------------prepare cv \(currentTopVC.navBarTitle.substring(fromIndex: 16))")
        calculateSizes()
        cellWidth = cellWd;                     cellHeight = cellHt
        widthPlusSpace = cellWidth! + hSpace;   heightPlusSpace = cellHeight! + vSpace
        
        var statusBarDelta = 0.0
        if UIApplication.shared.statusBarFrame.size.height > 20 {                           //print("Δ")
            statusBarDelta = Double(UIApplication.shared.statusBarFrame.size.height - 20)
        }
        
        yOffSet = collectionView!.contentOffset.y + CGFloat(navBarHeight + statusBarHeight - statusBarDelta) //print("yo: \(yOffSet)")
        xOffSet = collectionView!.contentOffset.x
        
        checkOrientation()
        
        if previousOrientation != currentOrientation  {
            DispatchQueue.main.asyncAfter(deadline: .now()) {
                currentTopVC.reloadAfterPreparingVCAndPossiblyPresentingItAgain(vc: currentTopVC)
            }
        } //else {print("will not call "reload-after-preparing-vc-and-possibly-presenting-it-again"")}
    }
    
    func calculateSizes() {                                                                 //print("resizing cells")
        statusBarHeight = Double(UIApplication.shared.statusBarFrame.size.height)           //; print("status bar: \(statusBarHeight)")
        navBarHeight = Double((navController?.navigationBar.frame.height)!)                 //; print("nav bar: \(navBarHeight)")
        
        if !loadsHorizontal {majorElements = cols; minorElements = rows                     //; print("should load vertically")
        }
        else {               majorElements = rows; minorElements = cols                     //; print("cells should load horizontally")
        }
        
        let calcWid = CGFloat(Double(globalKeyWindow.frame.width) - 0.5) / CGFloat(majorElements) - hSpace
        let calcHei = CGFloat(Double(globalKeyWindow.frame.height) - navBarHeight - statusBarHeight) / CGFloat(minorElements) - vSpace
        
        if widthAndHeightHardcoded {                                                        //print("💎")
            cellWd = cellWidth!;       cellHt = cellHeight!
        }
        else if heightHardcoded {
            cellWd = calcWid;          cellHt = cellHeight!
        }
        else if widthHardcoded {
            cellWd = cellWidth!;       cellHt = calcHei
        }
        else {                                                                              //print("☁️")
            cellWd = calcWid;          cellHt = calcHei
        }
    }
}



