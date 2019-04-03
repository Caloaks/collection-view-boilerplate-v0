//  CellColours.swift
//  The 'Ultimate' Collection View Boilerplate
//  Created by Garth Snyder on 2019-02-07.  //  Copyright © 2019 Garth Snyder. All rights reserved.

import UIKit

extension CollectionVC {
    
    func setCellColours (cell: CustomCell, indexPath: IndexPath) {
        
        cell.titleLabel.textColor = .white //platinumMedium
        
        let row = indexPath.row; let column = indexPath.section
        
        if row < downcastLayout!.lockedTopHeaders || column < downcastLayout!.lockedLeftHeaders {
            cell.backgroundColor = headerColour
        }
        else {
            if row % 2 != 0 {
                cell.backgroundColor = grayTwo
            }
            else {
                cell.backgroundColor = cellDefaultColour
            }
        }
    }
}


