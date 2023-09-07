//
//  Page4Row2.swift
//  Sample App p2
//
//  Created by Abhishek Gupta on 04/09/23.
//

import UIKit

class comp2 : UIViewController {
    var image = UIImageView()
    
    var labels:[UILabel] = [] // an array for labels in row2 of page indexing starts from 0 for                           from top to bottom
    
    var button = UIButton()
    var stack = UIStackView()
    var button2 = UIButton()
    override func viewDidLoad() {
        for  _ in 1...5{
            labels.append(UILabel())
        }
        setup()
        style()
        layout()
    }
    
    private func setup(){
        
        let borderView = UIView()
        borderView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(borderView)
        NSLayoutConstraint.activate([
            borderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            borderView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            borderView.topAnchor.constraint(equalTo: view.topAnchor),
            borderView.heightAnchor.constraint(equalToConstant: 130)
        ])
        borderView.layer.shadowColor = UIColor.black.cgColor
        borderView.layer.shadowOpacity = 0.05
        borderView.layer.shadowOffset = .zero
        borderView.layer.shadowRadius = 4
        borderView.layer.cornerRadius = 8
        // Add border
        borderView.layer.borderWidth = 0.2
        borderView.layer.borderColor = UIColor.black.cgColor
        view.heightAnchor.constraint(equalTo:borderView.heightAnchor).isActive = true
    }
    
    private func style(){
        
        view.translatesAutoresizingMaskIntoConstraints = false
       // view.backgroundColor = .systemPink
        for i in 0...4{
            labels[i].translatesAutoresizingMaskIntoConstraints = false
        }
        
        labels[0].text = "Incidents"
        //labels[1].text = "Good morning Jeff"
        //labels[2].text = "Your shift will start in 15 minutes"
        labels[3].text = "No new incidents reported by you"
        
        labels[0].font = .systemFont(ofSize: 15, weight: .regular)
        //labels[1].font = .systemFont(ofSize: 22, weight: .semibold)
        labels[2].font = .systemFont(ofSize: 15, weight: .regular)
        labels[3].font = .systemFont(ofSize: 15, weight: .regular)
        
        labels[0].textColor =  UIColor(red: 0.431, green: 0.431, blue: 0.431, alpha: 1)
        labels[3].textColor = UIColor(red: 0.431, green: 0.431, blue: 0.431, alpha: 1)
        
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "image 1")
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("View incidents", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = .systemFont(ofSize: 13, weight: .medium)
        button.setTitleColor(UIColor(red: 0.384, green: 0.392, blue: 0.655, alpha: 1), for: .normal)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(red: 0.651, green: 0.655, blue: 0.863, alpha: 1).cgColor
        button.layer.cornerRadius = 5
        button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
        stack.spacing = 8
    
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.alignment = .leading
        
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.setTitle("Report new incident", for: .normal)
        button2.setTitleColor(.white, for: .normal)
        button2.titleLabel?.font = .systemFont(ofSize: 13, weight: .medium)
        button2.layer.backgroundColor =  UIColor(red: 0.384, green: 0.392, blue: 0.655, alpha: 1).cgColor
        button2.contentEdgeInsets = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
        button2.layer.cornerRadius = 5
    }
    
    private func layout(){
        view.addSubview(stack)
        view.addSubview(labels[0])
        view.addSubview(labels[0])
        view.addSubview(button)
        view.addSubview(button2)
        stack.addArrangedSubview(image)
        for i in [3]{
            stack.addArrangedSubview(labels[i])
        }
        stack.addArrangedSubview(button2)
        //stack.addArrangedSubview(button2)
        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: 2),
            stack.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2),
        ])
        
        NSLayoutConstraint.activate([
            labels[0].topAnchor.constraint(equalTo: stack.topAnchor,constant: 2),
            labels[0].leadingAnchor.constraint(equalToSystemSpacingAfter: stack.leadingAnchor, multiplier: 4),
        ])
        
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(equalToSystemSpacingAfter: button2.trailingAnchor, multiplier: 1),
            
            button.topAnchor.constraint(equalTo: button2.topAnchor)
        ])
        
        
    }
    
}
