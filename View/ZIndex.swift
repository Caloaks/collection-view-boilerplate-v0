//  ZIndex.swift
//  The 'Ultimate' Collection View Boilerplate  ∙  1st commit Apr. 03, 2019  ∙  Created by Garth Snyder a.k.a. gladiusKatana ⚔️

import UIKit

extension CCVFlowLayout {
    
    func determineZIndex(item: Int, section: Int, cellAttributes: UICollectionViewLayoutAttributes) {    // Determine zIndex based on cell type.
        
        if section < lockedHeaderSections && item < lockedHeaderRows {  //Determine zIndex based on cell type.
            cellAttributes.zIndex = 4
        }
        else if item < lockedHeaderRows {
            cellAttributes.zIndex = 3
        }
        else if section < lockedHeaderSections {
            cellAttributes.zIndex = 2
        }
        else {
            cellAttributes.zIndex = 1
        }
    }
}
