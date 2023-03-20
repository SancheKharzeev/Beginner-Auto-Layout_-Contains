//
//  ViewController.swift
//  Beginner Auto Layout_ Contains
//
//  Created by Александр Х on 19.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let backgrndImageView = UIImageView()
    let imageLogo = UIImageView(image: #imageLiteral(resourceName: "panda_marin"))
    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setBackground()
        setLogo()
        setLabel()
        
    }

    func setBackground() {
        view.addSubview(backgrndImageView)
        backgrndImageView.translatesAutoresizingMaskIntoConstraints = false
        backgrndImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        backgrndImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        backgrndImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: -150).isActive = true
        backgrndImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 150).isActive = true
        backgrndImageView.image = UIImage(named: "laguna_beach")
        view.sendSubviewToBack(backgrndImageView) // чтобы изображение было на заднем фоне
        
    }
    
    func setLogo() {
        view.addSubview(imageLogo)
       
        imageLogo.translatesAutoresizingMaskIntoConstraints = false // обязательное условие отключения автолейаут
        NSLayoutConstraint.activate([
        
        imageLogo.widthAnchor.constraint(equalToConstant: 180),
        imageLogo.heightAnchor.constraint(equalToConstant: 170),
        imageLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        imageLogo.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -210),
        
        ])
        imageLogo.layer.cornerRadius = 85 // округление
        imageLogo.layer.borderWidth = 2 // толщина границы округления
        imageLogo.layer.borderColor = UIColor.black.cgColor
        imageLogo.clipsToBounds = true // обрезает лишнее вокруг круга
        
        imageLogo.layer.borderWidth = 3
        imageLogo.layer.borderColor = UIColor.systemPink.cgColor


    }
    
    func setLabel() {
        view.addSubview(label)
        label.textAlignment = .center
        label.text = "Panda Marine"
        label.textColor = .white
        label.font = UIFont(name: "Helvetica", size: 33)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100).isActive = true
        label.topAnchor.constraint(equalTo: view.topAnchor, constant: 55).isActive = true
        label.layer.borderWidth = 2 // толщина границы округления
        label.layer.borderColor = UIColor.systemPink.cgColor
        

        
        
    }
    
    
    
}

