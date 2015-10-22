//
//  ViewController.swift
//  Canvas
//
//  Created by Teus on 10/22/15.
//  Copyright © 2015 Teus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var trayView: UIView!
    var trayOriginalCenter: CGPoint!
    var openTrayView: CGPoint!
    var closedTrayView: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var openTrayView = self.trayView
        var closedTrayView = 
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onTrayPanGesture(sender: UIPanGestureRecognizer) {
        
        
        
        var translation = sender.translationInView(view)
        var velocity = sender.velocityInView(view)
        
        if sender.state == UIGestureRecognizerState.Began {
            trayOriginalCenter = trayView.center
            //print("Gesture began at: \(trayOriginalCenter)")
            
        } else if sender.state == UIGestureRecognizerState.Changed {
            
            
            trayView.center = CGPoint(x: trayOriginalCenter.x, y: trayOriginalCenter.y + translation.y)
            
            
            //print("Gesture changed at: \(trayOriginalCenter)")
            
        } else if sender.state == UIGestureRecognizerState.Ended {
            var velocity = sender.velocityInView(trayView)
            if velocity.y > 0 {
                
                
            }
            
            print("Gesture ended at: \(trayOriginalCenter)")
        }
        
    }
}

