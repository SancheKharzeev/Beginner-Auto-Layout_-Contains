//
//  SAButton.swift
//  Beginner Auto Layout_ Contains
//
//  Created by Александр Х on 19.03.2023.
//

import UIKit

class SAButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
        shadowStyle()
        shake()
        addActionButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
        shadowStyle()
        shake()
        addActionButton()
    }
    
     func setupButton() {
        backgroundColor = .systemPink
        setTitle("LOGIN", for: .normal)
       
         titleLabel?.font = UIFont(name: "Helvetica Bold", size: 24)
        layer.cornerRadius = frame.size.height / 2
        setTitleColor(.white, for: .normal)
        layer.borderWidth = 2
        layer.borderColor = UIColor.darkGray.cgColor
    }
     
     func shadowStyle() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0.0, height: 6.0)
        layer.shadowRadius = 8
        layer.shadowOpacity = 0.5
        clipsToBounds = true
        layer.masksToBounds = false
    }
    
    // MARK: animation button
    
    func shake() {
        let shake = CABasicAnimation(keyPath: "position")
        shake.duration = 0.1
        shake.repeatCount = 1
        shake.autoreverses = true
        
        let fromPoint =  CGPoint(x: center.x - 8, y: center.y)
        let fromValue = NSValue(cgPoint: fromPoint)
        let toPoint =  CGPoint(x: center.x + 8, y: center.y)
        let toValue = NSValue(cgPoint: toPoint)
        
        shake.fromValue = fromValue
        shake.toValue = toValue
        
        layer.add(shake, forKey: "position")
    }
    
    func addActionButton() {
        addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    @objc func  buttonTapped() {
        shake()
    }
}
