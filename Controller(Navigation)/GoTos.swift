//  GoTos.swift
//  The 'Ultimate' Collection View Boilerplate
//  Created by Garth Snyder on 2019-02-07.  //  Copyright © 2019 Garth Snyder. All rights reserved.

import UIKit

extension CollectionVC {
    
    @objc func reloadAfterPreparingVCAndPossiblyPresentingItAgain(vc: CollectionVC) {
        
        if previousOrientation == "landscape" && currentOrientation == "portrait"
            || willPresentVCAgainBecauseAppJustEnteredForeground {
            //print("\n---------------------presented then reloaded cv \(currentTopVC.navBarTitle.substring(fromIndex: 16))")
            
            setupTitleAndPresentViewController(vc: vc) { () -> () in
                previousOrientation = currentOrientation
                reloadCV(after: 0.02)
            }
        }
        else {
            previousOrientation = currentOrientation
            //reloadCollectionView()  //should it have a time delay, as in the above completion block? (will test over time, with different devices)
            reloadCV(after: 0.02)
        }
    }
    
    
    func gotoView(vc: CollectionVC) {                                                                       //print("\nshowing vc \(vc)")
        if currentTopVC != vc {
            
            checkOrientation()
            
            setupTitleAndPresentViewController(vc: vc) { () -> () in
                if currentOrientation == "landscape" {                                                      //print("pushed button when in landscape")
                    reloadCV(after: 0.02)
                }
                //else {print("just did goto from portrait")}
            }
            
        } else {print("you're already looking at view controller \(vc.navBarTitle.substring(fromIndex: 16))'s view")}
    }
    
    
    func setupTitleAndPresentViewController(vc: CollectionVC, completion: () -> ()) {                       //print("\ndismissing/presenting") // vc: \(vc)
        setupAndPresent(vc: vc)
        completion()
    }
    
    
    func setupAndPresent(vc: CollectionVC) {
        setupViewTitle(titleText: "", numLines: 1, alignment: .left)
        navController?.dismiss(animated: false, completion: nil)
        
        let newVC = UINavigationController(rootViewController: vc)
        navController?.present(newVC, animated: false, completion: nil)
    }
}