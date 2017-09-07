//
//  BubbleView.swift
//  testingSlider
//
//  Created by Nicky on 8/7/17.
//  Copyright © 2017 Nicky. All rights reserved.
//

import UIKit

class BubbleView: UIView {
    
    static var sliderHeight = 15
    open var defaultValue : Float = 0
    
    var arrayViews = [UIView]()
    
    fileprivate var _labelText:UILabel = {
        let label = UILabel()
        label.backgroundColor = UIColor(red: 64/255, green: 64/255, blue: 64/255, alpha: 1.0)
        label.textAlignment = .center
        label.textColor = UIColor.white
        label.font = UIFont.boldSystemFont(ofSize: 13)
        label.layer.shadowColor = UIColor.black.cgColor
        label.layer.shadowOffset = CGSize.zero
        label.layer.shadowRadius = 5.0
        label.layer.shadowOpacity = 0.7
        label.layer.cornerRadius = 15.0
        label.layer.masksToBounds = true
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonSetup()
    }
    
    fileprivate func commonSetup(){
        self.addSubview(_labelText)
    }
    
    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        
        if layer != self.layer {return}
        
        var x : CGFloat = 10
        let cellWidth : CGFloat = (self.bounds.width - 10*6 - 50) / 5
        let yAxis  = Int(self.bounds.height/2) - BubbleView.sliderHeight/2
        
        _labelText.frame = CGRect(x: Int(self.bounds.width - 50), y: Int(self.bounds.height/2) - 15 , width: 30, height: 30)
        _labelText.text = defaultValue.description
        
        for view  in arrayViews {
            view.removeFromSuperview()
        }
        
        for i in 1...5 {
            
            var percentage : Float = 0
            percentage =  Float(i) < defaultValue ? 100 : (1 - (Float(i) - defaultValue) ) * 100
            
            let frame = CGRect(x: Int(x), y: yAxis, width: Int(cellWidth), height: BubbleView.sliderHeight)
            let layerView = createBubbleView(frame: frame, percentage: percentage)
            self.addSubview(layerView)
            x = x + cellWidth + 10
            arrayViews.append(layerView)
            
        }
    }
    
    
    func createBubbleView(frame : CGRect , percentage : Float) -> UIView {
        
        let layerView = UIView()
        layerView.frame = frame
        layerView.layer.masksToBounds = true
        layerView.layer.cornerRadius = 8.0
        layerView.layer.backgroundColor = UIColor(red: 64/255, green: 64/255, blue: 64/255, alpha: 1.0).cgColor
        layerView.layer.shadowColor = UIColor.blue.cgColor
        layerView.layer.shadowOffset = CGSize(width: 2, height: 2)
        layerView.layer.shadowRadius = 5.0
        layerView.layer.shadowOpacity = 1.0
        
        let width =  (Float(frame.size.width)  * percentage )/100
        let breizerFrame = CGRect(x: 0, y: 0, width: CGFloat(width), height: frame.size.height)
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1.0)
        gradientLayer.locations = [0.1,0.6]
        gradientLayer.colors = [UIColor(red: 239/255, green: 160/255, blue: 120/255, alpha: 1.0).cgColor,UIColor(red: 255/255, green: 100/255, blue: 40/255, alpha: 1.0).cgColor]
        gradientLayer.frame = breizerFrame
        gradientLayer.shadowColor = UIColor.black.cgColor
        gradientLayer.shadowOffset = CGSize(width: 0.0, height: 2.5)
        gradientLayer.shadowRadius = 2.0
        gradientLayer.shadowOpacity = 0.25
        
        layerView.layer.addSublayer(gradientLayer)
        
        return layerView
    }
    
}
