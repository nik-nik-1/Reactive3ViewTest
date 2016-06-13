//
//  Subordinate#2.swift
//  Reactive3ViewTest
//
//  Created by mc373 on 13.06.16.
//  Copyright © 2016 mc373. All rights reserved.
//

import UIKit

class Subordinate_2_View: UIView {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        ssViewModel.checkSomeAmzSignal.observeNext{ [weak self] someVar in
            print ("Subordinate_2_View")
            self?.backgroundColor = ssViewModel.currentScheme?.Subordinate2ViewColor
        }
    }
    
}

