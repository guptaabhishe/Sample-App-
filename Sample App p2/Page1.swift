//
//  ViewController.swift
//  sample App
//
//  Created by Abhishek Gupta on 21/08/23.
//

import UIKit

class Page1: UIViewController {
    let teamImage = UIImageView()
    let msImage = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
    
    private func style(){
        
        teamImage.translatesAutoresizingMaskIntoConstraints = false
        msImage.translatesAutoresizingMaskIntoConstraints = false

    }
    
    private func layout(){
        
        view.addSubview(teamImage)
        teamImage.image = UIImage(named: "Icon 1")
        
        view.addSubview(msImage)
        msImage.image = UIImage(named: "Misc Screens")
        
        NSLayoutConstraint.activate([
            teamImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            teamImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            msImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            view.bottomAnchor.constraint(equalToSystemSpacingBelow: msImage.bottomAnchor, multiplier: 5)
            
        ])
    }
}


