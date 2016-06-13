//
//  ColorSchemeModel.swift
//  Reactive3ViewTest
//
//  Created by mc373 on 13.06.16.
//  Copyright © 2016 mc373. All rights reserved.
//

import Foundation
import UIKit

struct ColorSchemeModel {
    
    var currentItemOfScheme: (UIColor, UIColor, UIColor)?
    
    var primaryViewColor:UIColor {return (currentItemOfScheme?.0)!}
    var Subordinate1ViewColor:UIColor {return (currentItemOfScheme?.1)!}
    var Subordinate2ViewColor:UIColor {return (currentItemOfScheme?.2)!}
    
    private var massOfSheme: [(UIColor,UIColor,UIColor)] = []
    
    init () {
        setupMass()
        setShemeByNumber()
    }
    
    init (_ numberOfSheme:Int) {
        setupMass()
        setShemeByNumber(numberOfSheme)
    }
    
    mutating func setShemeByNumber (numberOfSheme:Int = 0) {
        
        var numberOfShemeToGet:Int
        let massOfShemeCount = massOfSheme.count
        
        if numberOfSheme == -8 {// parametre to generate random number
            numberOfShemeToGet = Int(arc4random_uniform(UInt32(massOfShemeCount)))
        } else {
            numberOfShemeToGet = numberOfSheme > massOfShemeCount ? 0 : numberOfSheme
        }
        
        currentItemOfScheme = massOfSheme[numberOfShemeToGet]
    }
    
    mutating func setupMass() {
        let pC = {ConvertHexToUIColor($0)}
        massOfSheme.append(pC("#FFDBC5"),pC("#EF4339"),pC("#B01C33"))
        massOfSheme.append(pC("#FFF4E1"),pC("#FFEBB7"),pC("#E67A7A"))
        massOfSheme.append(pC("#85A6B1"),pC("#8BD7D1"),pC("#CAEDDE"))
    }
}