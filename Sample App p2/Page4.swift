//
//  Page4.swift
//  Sample App p2
//
//  Created by Abhishek Gupta on 30/08/23.
//

import UIKit

class Page4: UIViewController {
    var stack = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(stack)
        
        let row1 = comp1()
        stack.addArrangedSubview(row1.view)
        let row2 = comp2()
        stack.addArrangedSubview(row2.view)
        let row3 = comp3()
        stack.addArrangedSubview(row3.view)
        let row4 = comp4()
        stack.addArrangedSubview(row4.view)
        
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            stack.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 5),
            
            stack.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2),
            
            stack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])
        
        stack.axis = .vertical
        stack.spacing = 10
        stack.distribution = .fill
        
    }
}
