//
//  GradientView.swift
//  ForexAlerts
//
//  Created by James Ramputh on 2022-05-28.
//

import UIKit

class GradientView: UIView {
    let gradient = CAGradientLayer()
    
    init(colors: [CGColor]) {
        super.init(frame: .zero)
        
        gradient.frame = bounds
        gradient.colors = colors
        layer.addSublayer(gradient)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradient.frame = bounds
    }
}

