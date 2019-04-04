//  CellDimensionsMode.swift
//  D-M-Y-Tabs-Calendar
//  Created by Garth Snyder on 2019-04-04.  //  Copyright © 2019 Garth Snyder. All rights reserved.

import UIKit

extension CCVFlowLayout { // although this may be useful to call from the collection view class... in which case it could be made global again
    
    enum CellDimensionsMode: Int {
        case widthAndHeightHardcoded = 0
        case widthHardcoded, heightHardcoded, neitherHardcoded
        func simpleDescription() -> String {
            switch self {
            case .widthAndHeightHardcoded:
                return "width and height of the cells are both hardcoded"
            case .widthHardcoded:
                return "width of the cells is hardcoded, height is auto-fitted"
            case .heightHardcoded:
                return "height of the cells is hardcoded, width is auto-fitted"
            case .neitherHardcoded:
                return "width and height of the cells are both auto-fitted"
            }
        }
    }
}
