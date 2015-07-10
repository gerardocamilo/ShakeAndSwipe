//
//  ViewController.swift
//  ShakeAndSwipe
//
//  Created by Gerardo Camilo on 7/9/15.
//  Copyright (c) 2015 ___GRCS___. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var swipeRight = UISwipeGestureRecognizer(target: self, action: "swiped:")
        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
        self.view.addGestureRecognizer(swipeRight)
        
        var swipeLeft = UISwipeGestureRecognizer(target: self, action: "swiped:")
        swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        self.view.addGestureRecognizer(swipeLeft)
        
        var swipeUp = UISwipeGestureRecognizer(target: self, action: "swiped:")
        swipeUp.direction = UISwipeGestureRecognizerDirection.Up
        self.view.addGestureRecognizer(swipeUp)
        
        var swipeDown = UISwipeGestureRecognizer(target: self, action: "swiped:")
        swipeDown.direction = UISwipeGestureRecognizerDirection.Down
        self.view.addGestureRecognizer(swipeDown)
        
        
        
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent) {
        
        if  event.subtype == UIEventSubtype.MotionShake {
            println("Shake happened!")
        }
    }

    func swiped(gestureRecognizer: UIGestureRecognizer){
        if let gesture = gestureRecognizer as? UISwipeGestureRecognizer {
            
            switch(gesture.direction){
            case UISwipeGestureRecognizerDirection.Right:
                    println("Swiped Right!")
            case UISwipeGestureRecognizerDirection.Left:
                println("Swiped Left!")
            case UISwipeGestureRecognizerDirection.Up:
                println("Swiped Up!")
            case UISwipeGestureRecognizerDirection.Down:
                println("Swiped down!")
                
                
            default:
                break
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

