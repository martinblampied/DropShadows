//
//  ViewController.swift
//  DropShadow
//
//  Created by Martin Blampied on 31/03/2015.
//  Copyright (c) 2015 MartinBlampied. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // caSetShadow()
        // caSetShadowWithTransparency()
        // caSetShadowWithAnimation()
        // bezierSetShadow()
         bezierSetCurvShadow()
        
        
    }

    
    func caSetShadow() {
        
        var myView = UIView(frame: CGRectMake(100, 100, 100, 100))
        myView.center = self.view.center
        myView.backgroundColor = UIColor.greenColor()
        myView.layer.cornerRadius = myView.frame.size.width/2
        
        // Drop Shadow
        myView.layer.shadowRadius = 6
        myView.layer.shadowOffset = CGSizeMake(5, 5)
        myView.layer.shadowColor = UIColor.blackColor().CGColor
        myView.layer.shadowOpacity = 0.75
        self.view.addSubview(myView)
        
    }
    
    

    func caSetShadowWithTransparency() {
        
        var myView = UIImageView(frame: CGRectMake(100, 100, 300, 132))
        myView.image = UIImage(named: "google")
         myView.center = self.view.center
        
        // Drop Shadow
        myView.layer.shadowRadius = 2
        myView.layer.shadowOffset = CGSizeMake(3, 3)
        myView.layer.shadowColor = UIColor.blackColor().CGColor
        myView.layer.shadowOpacity = 0.75
        self.view.addSubview(myView)
        
    }
    
    

    func caSetShadowWithAnimation() {
        
        var myView = UIView(frame: CGRectMake(100, 100, 100, 100))
        myView.center = self.view.center
        myView.backgroundColor = UIColor.redColor()
        myView.layer.cornerRadius = 0
        
        // Drop Shadow
        myView.layer.shadowRadius = 6
        myView.layer.shadowOffset = CGSizeMake(5, 5)
        myView.layer.shadowColor = UIColor.blackColor().CGColor
        myView.layer.shadowOpacity = 0.75
        self.view.addSubview(myView)
        
        
        UIView.animateWithDuration(5, delay: 1, options: .Repeat, animations:
            {
                myView.layer.cornerRadius = myView.frame.size.width/2
                myView.frame.size = CGSizeMake(50, 50)
                myView.layer.shadowOffset = CGSizeMake(10, 10)
                myView.layer.shadowRadius = 3
            }, completion: nil)
    }
    
    
    
    func bezierSetShadow() {
        
        var myView = UIView(frame: CGRectMake(100, 100, 100, 100))
        myView.center = self.view.center
        myView.backgroundColor = UIColor.blueColor()
        myView.layer.cornerRadius = 2
    
        // Drop Shadow
        let squarePath = UIBezierPath(rect: myView.bounds).CGPath
        
        myView.layer.shadowPath = squarePath;
        myView.layer.shadowRadius = 6
        myView.layer.shadowOffset = CGSizeMake(8, 8)
        myView.layer.shadowColor = UIColor.blueColor().CGColor
        myView.layer.shadowOpacity = 0.75
        
        self.view.addSubview(myView)
        
    }
    
    
    func bezierSetCurvShadow() {
    
        var myView = UIView(frame: CGRectMake(100, 100, 100, 100))
        myView.center = self.view.center
        myView.backgroundColor = UIColor.purpleColor()
        myView.layer.cornerRadius = 2

        let size = myView.bounds.size;
        let curlFactor = 15.0 as CGFloat;
        let shadowDepth = 5.0 as CGFloat;
        //var path = UIBezierPath()
        
    
        /*  PAPER CURL
        path.moveToPoint(CGPointMake(0, 0))
        path.addLineToPoint(CGPointMake(size.width, 0))
        path.addLineToPoint(CGPointMake(size.width, size.height + shadowDepth))
        path.addCurveToPoint(CGPointMake(0, size.height + shadowDepth), controlPoint1: CGPointMake(size.width - curlFactor, size.height + shadowDepth - curlFactor), controlPoint2: CGPointMake(curlFactor, size.height + shadowDepth - curlFactor))
        */
        
        /* // Trapezoidal CGPath
        path.moveToPoint(CGPointMake(size.width * 0.33, size.height * 0.66))
        path.addLineToPoint(CGPointMake(size.width * 0.66, size.height * 0.66))
        path.addLineToPoint(CGPointMake(size.width * 1.15, size.height * 1.15))
        path.addLineToPoint(CGPointMake(size.width * -0.15, size.height * 1.15))
        */
       
        
        var ovalRect = CGRectMake(0.0, size.height + 5, size.width, 15);
        var path = UIBezierPath(ovalInRect: ovalRect)
        
        
        myView.layer.shadowPath = path.CGPath;
        myView.layer.shadowRadius = 4
        myView.layer.shadowOffset = CGSizeMake(0, 5)
        myView.layer.shadowColor = UIColor.blackColor().CGColor
        myView.layer.shadowOpacity = 0.5
        
        self.view.addSubview(myView)
        

    }
   
    

}

