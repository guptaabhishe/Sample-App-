//
//  Page 6.swift
//  Sample App p2
//
//  Created by Abhishek Gupta on 29/08/23.
//

import UIKit

class MenuRow:UIViewController{
    var image = UIImageView()
    var text =  UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        style()
        layout()
        
    }
    
     init(imageName:String , labelText:String){
        super.init(nibName: nil, bundle: nil)
        image.image = UIImage(named: imageName)
        text.text = labelText
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func style(){
        view.translatesAutoresizingMaskIntoConstraints = false
        image.translatesAutoresizingMaskIntoConstraints = false
        text.translatesAutoresizingMaskIntoConstraints = false
        
        text.textColor = UIColor(red: 0.129, green: 0.129, blue: 0.129, alpha: 1)
        text.font = .systemFont(ofSize: 17)
    }
    
    func layout(){
        view.addSubview(image)
        view.addSubview(text)
        
        NSLayoutConstraint.activate([
            image.topAnchor.constraint(equalTo: view.topAnchor),
            image.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2),
            text.leadingAnchor.constraint(equalToSystemSpacingAfter: image.trailingAnchor, multiplier: 2),
            text.topAnchor.constraint(equalTo: view.topAnchor)
        ])
    }
}

class Page6: UIViewController {
   
    var stack = UIStackView()
    var headerImage = UIImageView()
    var headerText =  UILabel()
    var subText =  UILabel()
    var strip = UIView()
    var bottomIcon = UIImageView()
    var bottomLabel = UILabel()
    var bottomSubLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        style()
        layout()
    }
    
    func setup(){
        
        let row0 = MenuRow(imageName: "Avatar", labelText:"")
        let row1 = MenuRow(imageName: " Available - Light", labelText: "Available")
        let row2 = MenuRow(imageName: "Regular", labelText: "Set status message")
        let row3 = MenuRow(imageName: "Alert", labelText: "Notifications")
        let row4 = MenuRow(imageName: "Regular 1", labelText: "Settings")
        let row5 = MenuRow(imageName: "Regular 2", labelText: "What’s new")
        
        stack.addArrangedSubview(row0.view)
        stack.addArrangedSubview(row1.view)
        stack.addArrangedSubview(row2.view)
        stack.addArrangedSubview(row3.view)
        stack.addArrangedSubview(row4.view)
        stack.addArrangedSubview(row5.view)
    }
    
    private func style(){
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 60
        strip.translatesAutoresizingMaskIntoConstraints = false

        strip.alpha = 0.4
        strip.backgroundColor = .blue
        strip.layer.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        
        headerText.text = "Karin Blair"
        headerText.translatesAutoresizingMaskIntoConstraints = false
        headerText.font = .systemFont(ofSize: 15, weight: .semibold)
        
        bottomIcon.translatesAutoresizingMaskIntoConstraints = false
        bottomIcon.image = UIImage(named: "Regular 3")
        
        bottomLabel.translatesAutoresizingMaskIntoConstraints = false
        bottomLabel.text = "Sign out"
        bottomLabel.textColor = UIColor(red: 0.384, green: 0.392, blue: 0.655, alpha: 1)
        bottomLabel.font = .systemFont(ofSize: 17, weight: .semibold)
        
        bottomSubLabel.translatesAutoresizingMaskIntoConstraints = false
        bottomSubLabel.textColor =  UIColor(red: 0.384, green: 0.392, blue: 0.655, alpha: 1)
        bottomSubLabel.font = .systemFont(ofSize: 13, weight: .regular)
        bottomSubLabel.text = "karin.blair@northwindtraders.com"
    }
    
    private func layout(){
        
        view.addSubview(stack)
        view.addSubview(strip)
        view.addSubview(headerText)
        view.addSubview(bottomIcon)
        view.addSubview(bottomLabel)
        view.addSubview(bottomSubLabel)
        
        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 0),
            stack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -44),
            stack.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            strip.topAnchor.constraint(equalTo: view.topAnchor),
            strip.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            strip.leadingAnchor.constraint(equalTo: stack.trailingAnchor),
            strip.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            headerText.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 1),
            headerText.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 9)
        ])
        
        NSLayoutConstraint.activate([
            bottomIcon.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
            bottomIcon.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2),
            
            bottomLabel.bottomAnchor.constraint(equalTo: bottomIcon.topAnchor,constant: 16),
            bottomLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: bottomIcon.trailingAnchor, multiplier: 2),
            bottomSubLabel.topAnchor.constraint(equalTo: bottomIcon.bottomAnchor,constant: -8),
            bottomSubLabel.leadingAnchor.constraint(equalTo: bottomLabel.leadingAnchor)
            
        ])
        
        
    }

}
