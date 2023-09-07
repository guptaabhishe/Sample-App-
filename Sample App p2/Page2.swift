//
//  ViewController.swift
//  Sample App p2
//
//  Created by Abhishek Gupta on 21/08/23.
//

import UIKit

class Page2: UIViewController {
    
    var stackView = UIStackView()
    var eclipseImage = UIImageView()
    var label = UILabel()
    var indicator = UIActivityIndicatorView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
    }
    
    func layout(){
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        eclipseImage.translatesAutoresizingMaskIntoConstraints = false
        indicator.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        
        indicator.startAnimating()
        eclipseImage.image = UIImage(named: "Ellipse 1")
        label.text="Hang on while we get things ready"
        indicator.style = .large
        
        view.addSubview(stackView)
        
        stackView.addArrangedSubview(eclipseImage)
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(indicator)
        
        stackView.spacing = 24
        stackView.alignment = .center
        stackView.axis = .vertical
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
    }

}

