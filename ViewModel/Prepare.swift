//  Prepare.swift
//  The 'Ultimate' Collection View Boilerplate  ∙  1st commit Apr. 03, 2019  ∙  Created by Garth Snyder a.k.a. gladiusKatana ⚔️

import UIKit

extension CCVFlowLayout {
    
    override func prepare() {
        calculateSizes()
        cellWidth = cellWd;                     cellHeight = cellHt
        widthPlusSpace = cellWidth! + hSpace;   heightPlusSpace = cellHeight! + vSpace
        
        var statusBarDelta = 0.0
        if UIApplication.shared.statusBarFrame.size.height > 20 {                           //print("Δ")
            statusBarDelta = Double(UIApplication.shared.statusBarFrame.size.height - 20)
        }
        
        yOffSet = collectionView!.contentOffset.y + CGFloat(navBarHeight + statusBarHeight - statusBarDelta) //print("yo: \(yOffSet)")
        xOffSet = collectionView!.contentOffset.x
        
        checkOrientation()                          //print(substringWithAppends(input: currentTopVC.navBarTitle, preceding: "---------------------prepare cv  ", following:  "  cell width: \(cellWidth!)  nav bar height: \(navBarHeight)"))
        
        if previousOrientation != currentOrientation  {
            DispatchQueue.main.asyncAfter(deadline: .now()) {
                currentTopVC.reloadAfterPreparingVCAndPossiblyPresentingItAgain(vc: currentTopVC)
            }
        }//else {print("will not call "reload-after-preparing-vc-and-possibly-presenting-it-again"")}
    }
    
    func calculateSizes() {                                                                 //print("resizing cells")
        statusBarHeight = Double(UIApplication.shared.statusBarFrame.size.height)           //; print("status bar: \(statusBarHeight)")
        navBarHeight = Double((navController?.navigationBar.frame.height)!)                 //; print("nav bar: \(navBarHeight)")
        
        let autofitWidth = CGFloat(Double(globalKeyWindow.frame.width) - 0.5) / CGFloat(cols) - hSpace
        let autoFitHeight = CGFloat(Double(globalKeyWindow.frame.height) - navBarHeight - statusBarHeight) / CGFloat(rows) - vSpace
        
        switch cellDimensionsMode {
            
        case .widthAndHeightHardcoded:  cellWd = cellWidth!         ; cellHt = cellHeight!
            
        case .widthHardcoded:           cellWd = cellWidth!         ; cellHt = autoFitHeight * autoFitHScale!

        case .heightHardcoded:          cellWd = autofitWidth * autoFitWScale!   ; cellHt = cellHeight!
            
        case .neitherHardcoded:         cellWd = autofitWidth * autoFitWScale!   ; cellHt = autoFitHeight * autoFitHScale!
        }
        
        resetDimensionIfSquareCellsOn()
    }
}



