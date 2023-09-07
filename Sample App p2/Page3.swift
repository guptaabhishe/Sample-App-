//
//  Page3.swift
//  Sample App p2
//
//  Created by Abhishek Gupta on 28/08/23.
//

import UIKit

class rowViewController:UIViewController{
    var mainLabel = UILabel()
    var image = UIImageView()
    var buttonText = UIButton()
    var subLabel = UILabel()
    
    init(imageName:String ,text:String , text2:String){
        super.init(nibName: nil, bundle: nil)
        mainLabel.text = text
        image.image = UIImage(named: imageName)
        subLabel.text = text2
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        layout()
        style()
    }
    
    private func style(){
        
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        image.translatesAutoresizingMaskIntoConstraints = false
        buttonText.translatesAutoresizingMaskIntoConstraints = false
        subLabel.translatesAutoresizingMaskIntoConstraints = false
        view.translatesAutoresizingMaskIntoConstraints = false
        
        mainLabel.textColor = UIColor(red: 0.129, green: 0.129, blue: 0.129, alpha: 1)
        mainLabel.font = UIFont(name: "SFProText-Regular", size: 16)
        mainLabel.numberOfLines = 0
        subLabel.textColor = UIColor(red: 0.43, green: 0.43, blue: 0.43, alpha: 1)
        subLabel.font = .systemFont(ofSize: 13)
        subLabel.numberOfLines  = 0
        
    }
    
    private func layout(){
        view.addSubview(image)
        view.addSubview(mainLabel)
        view.addSubview(subLabel)
        
        NSLayoutConstraint.activate([
            image.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 3),
            mainLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: image.trailingAnchor, multiplier: 2),
            mainLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            subLabel.leadingAnchor.constraint(equalTo: mainLabel.leadingAnchor),
            subLabel.topAnchor.constraint(equalToSystemSpacingBelow: mainLabel.bottomAnchor, multiplier: 0)
        ])
        
    }
}

class Page3: UIViewController {
    
    var stack = UIStackView()
    var headerLabel = UILabel()
    var footerLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let row1 = rowViewController(imageName: "Teams_voice_skills_send_message 1", text: "Reminders for upcoming shift",text2: "Never miss out on shift timings")
        
        let row2 = rowViewController(imageName: "Teams_voice_skills_send_message 1 (1)", text: "Report incidents", text2: "Take actions on incidents through app")
        
        let row3 = rowViewController(imageName: "callhistory_due_small 1", text: "Privacy", text2: "We will never sell or share your data with other apps or services.")
        
        stack.addArrangedSubview(row1.view)
        stack.addArrangedSubview(row2.view)
        stack.addArrangedSubview(row3.view)
        
        headerLabel.text = "Welcome to Contoso"
        footerLabel.text = "Get started"
        
        style()
        layout()
        
        // Do any additional setup after loading the view.
    }
    
    
    private func style(){
        
        view.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor

        stack.axis = .vertical
        stack.spacing = 70
        
        headerLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        headerLabel.font = .systemFont(ofSize: 26 , weight: UIFont.Weight.semibold)
        
        stack.translatesAutoresizingMaskIntoConstraints = false
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        headerLabel.textAlignment = .center
        
        footerLabel.translatesAutoresizingMaskIntoConstraints = false
        footerLabel.textAlignment = .center
        footerLabel.backgroundColor = UIColor(red: 0.384, green: 0.392, blue: 0.655, alpha: 1)
        footerLabel.textColor = .systemBackground
        
        footerLabel.layer.cornerRadius = 8
        footerLabel.clipsToBounds = true
        footerLabel.font = .systemFont(ofSize: 14)
        
    }
    private func layout(){
        view.addSubview(stack)
        view.addSubview(headerLabel)
        view.addSubview(footerLabel)
        
        NSLayoutConstraint.activate([
            headerLabel.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 17),
            
            stack.topAnchor.constraint(equalToSystemSpacingBelow: headerLabel.bottomAnchor, multiplier: 4),
            stack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
        
        NSLayoutConstraint.activate([
            headerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            
            view.safeAreaLayoutGuide.bottomAnchor.constraint(equalToSystemSpacingBelow: footerLabel.bottomAnchor, multiplier: 7),
            
            footerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            footerLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            footerLabel.heightAnchor.constraint(equalToConstant: 40)
                        
        ])
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
