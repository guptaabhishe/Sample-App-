//
//  Page4Row3.swift
//  Sample App p2
//
//  Created by Abhishek Gupta on 04/09/23.
//

import UIKit

class comp3 : UIViewController {
    var image = UIImageView()
    var labels:[UILabel] = []
    var button = UIButton()
    var stack = UIStackView()
    override func viewDidLoad() {
        for  _ in 1...5{
            labels.append(UILabel())
        }
        setup()
        style()
        layout()
    }
    
    private func setup(){
        
        let myView = UIView()
        //myView.backgroundColor = .blue
        myView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(myView)
        //view.backgroundColor = .blue
        NSLayoutConstraint.activate([
            myView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            myView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            myView.topAnchor.constraint(equalTo: view.topAnchor),
            myView.heightAnchor.constraint(equalToConstant: 150)
        ])
        myView.layer.shadowColor = UIColor.black.cgColor
        myView.layer.shadowOpacity = 0.05
        myView.layer.shadowOffset = .zero
        myView.layer.shadowRadius = 4
        myView.layer.cornerRadius = 8
        // Add border
        myView.layer.borderWidth = 0.2
        myView.layer.borderColor = UIColor.black.cgColor
        view.heightAnchor.constraint(equalTo:myView.heightAnchor).isActive = true
    }
    
    private func style(){
        
        view.translatesAutoresizingMaskIntoConstraints = false
       // view.backgroundColor = .systemPink
        for i in 0...4{
            labels[i].translatesAutoresizingMaskIntoConstraints = false
        }
        
        labels[0].text = "Tasks"
        labels[1].text = "Clear out the loading area"
        labels[2].text = "Your shift will start in 15 minutes"
        labels[3].text = "+ 4 more tasks"
        
        labels[0].font = .systemFont(ofSize: 15, weight: .regular)
        //labels[1].font = .systemFont(ofSize: 22, weight: .semibold)
        labels[2].font = .systemFont(ofSize: 15, weight: .regular)
        labels[3].font = .systemFont(ofSize: 15, weight: .regular)
        
        labels[0].textColor =  UIColor(red: 0.431, green: 0.431, blue: 0.431, alpha: 1)
        labels[3].textColor = UIColor(red: 0.431, green: 0.431, blue: 0.431, alpha: 1)
        
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "image 2")
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("View all tasks", for: .normal)
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
    }
    
    private func layout(){
        view.addSubview(stack)
        view.addSubview(labels[0])
        view.addSubview(labels[0])
        stack.addArrangedSubview(image)
        for i in [1,3]{
            stack.addArrangedSubview(labels[i])
        }
        stack.addArrangedSubview(button)
        
        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: 2),
            stack.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2),
        ])
        
        NSLayoutConstraint.activate([
            labels[0].topAnchor.constraint(equalTo: stack.topAnchor,constant: 2),
            labels[0].leadingAnchor.constraint(equalToSystemSpacingAfter: stack.leadingAnchor, multiplier: 4),
        ])
    }
    
}
