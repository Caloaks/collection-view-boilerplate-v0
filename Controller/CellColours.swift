//  CellColours.swift
//  The 'Ultimate' Collection View Boilerplate  ∙  1st commit Apr. 03, 2019  ∙  Created by Garth Snyder a.k.a. gladiusKatana ⚔️

import UIKit

extension CollectionVC {
    
    func setCellColours (cell: CustomCell, indexPath: IndexPath) {
        
        var row = 0; var column = 0
        let customLayout = downcastLayout!
        
        //if !customLayout.loadsHorizontal {            // keep lines 14 & 16-19 commented if you want cell colour pattern to vary *with the rows*
        row = indexPath.item; column = indexPath.section
        //}
        //else {
        //row = indexPath.section; column = indexPath.item
        //}
        
        cell.titleLabel.textColor = .white //platinumMedium
        
        if row < customLayout.lockedHeaderRows || column < customLayout.lockedHeaderSections {
            cell.backgroundColor = headerColour
        }
        else {
            
            if customLayout.squareCellMode == .noAutoSquare {
                if row % 2 != 0 {
                    cell.backgroundColor = grayTwo
                }
                else {
                    cell.backgroundColor = cellDefaultColour
                }
            }
            else {
                if row % 2 != 0 || column % 2 != 0 {
                    cell.backgroundColor = grayTwo
                }
                else {
                    cell.backgroundColor = cellDefaultColour
                }
            }
        }
    }
}


