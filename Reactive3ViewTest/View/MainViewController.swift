//
//  MainViewController.swift
//  Reactive3ViewTest
//
//  Created by mc373 on 13.06.16.
//  Copyright © 2016 mc373. All rights reserved.
//

import UIKit
import ReactiveCocoa
import Result

class MainViewController: UIViewController {

    @IBOutlet weak var primaryView: UIView!
    @IBOutlet weak var subordinate1View: UIView!
    @IBOutlet weak var subordinate2View: UIView!
    
    private var tapPressGestureOfPrimaryView: UITapGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupInit()
    }
    
     func setupInit () {
        
        tapPressGestureOfPrimaryView = UITapGestureRecognizer(target: self, action: #selector(handleTapGesture(_:)))
        self.primaryView.addGestureRecognizer(tapPressGestureOfPrimaryView)
    }
    
    //MARK: Gesture func
    func handleTapGesture(gesture: UITapGestureRecognizer) {
        ssViewModel.handleTapGesture(gesture.state)
    }
    
}
