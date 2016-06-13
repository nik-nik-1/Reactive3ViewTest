//
//  SomeStuffViewModel.swift
//  Reactive3ViewTest
//
//  Created by mc373 on 13.06.16.
//  Copyright © 2016 mc373. All rights reserved.
//

import Foundation
import ReactiveCocoa
import Result

class SomeStuffViewModel {
    
    var currentScheme: ColorSchemeModel?
    
    private let (someAmzSignal, someAmzObserver) = Signal<ColorSchemeModel, NoError>.pipe()
    
    var checkSomeAmzSignal: Signal<ColorSchemeModel, NoError> {
        return someAmzSignal
    }
    
    func handleTapGesture(state: UIGestureRecognizerState) {
        
        switch(state) {
        case UIGestureRecognizerState.Ended:

            currentScheme = ColorSchemeModel(-8)
            
            someAmzObserver.sendNext(currentScheme!)
            break
            
        case UIGestureRecognizerState.Began: break
        default: break
            
        }
    }
    
    
    
}
