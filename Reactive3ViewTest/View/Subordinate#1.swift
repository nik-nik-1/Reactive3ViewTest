//
//  Subordinate#1.swift
//  Reactive3ViewTest
//
//  Created by mc373 on 13.06.16.
//  Copyright © 2016 mc373. All rights reserved.
//

import UIKit
import ReactiveCocoa
import Result

class Subordinate_1_View: UIView {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        ssViewModel.checkSomeAmzSignal.observeNext{ [weak self] someVar in
            print ("Subordinate_1_View")
            
            self?.backgroundColor = ssViewModel.currentScheme?.Subordinate1ViewColor
            
        }
    }
    
}
