//
//  Subordinate#1.swift
//  Reactive3ViewTest
//
//  Created by mc373 on 13.06.16.
//  Copyright © 2016 mc373. All rights reserved.
//

import UIKit

class Subordinate_1_View: UIView {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        ssViewModel.checkSomeAmzSignal.observeNext{ [weak self] currentScheme in
            print ("Subordinate_1_View")
            
            self?.backgroundColor = currentScheme.Subordinate1ViewColor
        }
    }
    
}
