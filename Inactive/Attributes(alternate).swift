//  Attributes(alternate).swift
//  The 'Ultimate' Collection View Boilerplate
//  Created by Garth Snyder on 2019-02-07.  //  Copyright © 2019 Garth Snyder. All rights reserved.

//import UIKit
//
//extension CollectionViewLayoutAlternate {//CollectionViewLayoutAlternate // use if other version of Attributes (file above) is uncommented at the same time
//
//    override func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {return true}               //print("*invalidated layout")
//
//    override func invalidateLayout() {                                                                          //print("\n------------invalidated layout")
//        ///attributesInRect = [] //now defined locally (see layoutAttributesForElements(in rect:... )
//        setAttributesForAllCells = false
//        super.invalidateLayout()
//    }
//
//    override var collectionViewContentSize: CGSize {                                                            //print("setting content size")
//        let w = CGFloat(cols) * (cellWidth! + hSpace)
//        let h = CGFloat(rows) * (cellHeight! + vSpace)
//        return CGSize(width: w, height: h)
//    }
//
//    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {         //print("\nlayout attributes (rect)")
//        
//        var attributesInRect = [UICollectionViewLayoutAttributes]()
//        
//        if !setAttributesForAllCells {
//            for section in 0 ..< cols {
//                for item in 0 ..< rows {                                                                        //print(".", terminator: "")
//                    let indexPath = IndexPath(item: item, section: section)     //; print("\(indexPath)  rows \(rows)  cols \(cols)")
//                    let xPos = CGFloat(section) * (cellWidth! + hSpace)
//                    let yPos = CGFloat(item) * (cellHeight! + vSpace)
//
//                    let cellAttributes = UICollectionViewLayoutAttributes(forCellWith: indexPath)
//                    cellAttributes.frame = CGRect(x: xPos, y: yPos, width: cellWidth!, height: cellHeight!)
//
//                    attributesInRect.append(cellAttributes)
//                    determineZIndex(item: item, section: section, cellAttributes: cellAttributes)
//
////                    if headerType == HeaderType.top || headerType == HeaderType.both {
//                        if item < lockedTopHeaders {
//                            var statusBarCompensator = 0.0
//                            if UIApplication.shared.statusBarFrame.size.height > 20 {statusBarCompensator = Double(UIApplication.shared.statusBarFrame.size.height - 20) }
//
//                            let yOffSet = collectionView!.contentOffset.y + CGFloat(navBarHeight + statusBarHeight - statusBarCompensator)
//                            cellAttributes.frame.origin.y = yOffSet + CGFloat(item) * (cellHeight! + vSpace)    //; print("🔒t")    // lock top row(s)
//                        }
////                    }
//
////                    if headerType == HeaderType.left || headerType == HeaderType.both {
//                        if section < lockedLeftHeaders {
//                            let xOffSet = collectionView!.contentOffset.x
//                            cellAttributes.frame.origin.x = xOffSet + CGFloat(section) * (cellWidth! + hSpace)  //; print("🔒l")    // lock leftmost column(s)
//                        }
////                    }
//
//                    if section == cols - 1 && item == rows - 1 {                                                //print("ok set all cells' attributes")
//                        setAttributesForAllCells = true
//                    }
//                }
//            }
//        }
//        return attributesInRect
//    }
//}
//
//class CollectionViewLayoutAlternate : CCVFlowLayout {    //only needed if both 'Attributes' extensions are uncommented at the same time
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//}
