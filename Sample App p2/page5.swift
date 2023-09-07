//
//  page5.swift
//  Sample App p2
//
//  Created by Abhishek Gupta on 28/08/23.
//

import UIKit

class Page5: UIViewController {
    
    var segmentView = UISegmentedControl(items: ["Today", "incidents"])
    var stack = UIStackView()
    var image = UIImageView()
    var mainLabel = UILabel()
    var subLabel = UILabel()
    var button = UIButton(type: .system)
    var header = UILabel()
    var headerImage = UIImageView()
    var page4 = Page4()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
        page4.view.isHidden = true
    }
    
    private func style(){
        
        segmentView.addTarget(self, action: #selector(segmentedControlValueChanged), for: .valueChanged)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        subLabel.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        image.translatesAutoresizingMaskIntoConstraints = false
        header.translatesAutoresizingMaskIntoConstraints = false
        headerImage.translatesAutoresizingMaskIntoConstraints = false
        page4.view.translatesAutoresizingMaskIntoConstraints = false
        
        image.image = UIImage(named: "Group")
        headerImage.image = UIImage(named: "Avatar")
        mainLabel.textAlignment = .center
        subLabel.textAlignment = .center
        
        
        mainLabel.text = "No incidents reported"
        mainLabel.font = .systemFont(ofSize: 22, weight: .semibold)
        
        subLabel.font = UIFont(name: "SFProText-Regular", size: 17)
        subLabel.text = "No new incidents reported by you"
        subLabel.textColor =  UIColor(red: 0.431, green: 0.431, blue: 0.431, alpha: 1)
        
        header.text = "Contoso"
        header.font = .boldSystemFont(ofSize: 26)
        
        button.setTitle("Report incident", for: .normal)
        button.titleLabel?.font = .preferredFont(forTextStyle: .callout)
        button.setTitleColor(UIColor(red: 0.38, green: 0.39, blue: 0.65, alpha: 1), for: .normal)
        
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(red: 0.651, green: 0.655, blue: 0.863, alpha: 1).cgColor
        button.layer.cornerRadius = 8
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.alignment = .center
        stack.spacing = 12
        
        
        page4.view.isHidden = true
        
    }
    
    private func layout(){
        view.addSubview(segmentView)
        view.addSubview(stack)
        view.addSubview(headerImage)
        view.addSubview(header)
        view.addSubview(page4.view)
        
        //view.addSubview(button)
        
        stack.addArrangedSubview(image)
        stack.addArrangedSubview(mainLabel)
        stack.addArrangedSubview(subLabel)
        stack.addArrangedSubview(button)
        
        NSLayoutConstraint.activate([
            segmentView.topAnchor.constraint(equalToSystemSpacingBelow: headerImage.bottomAnchor, multiplier: 2),
            segmentView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: segmentView.trailingAnchor, multiplier: 1),
            segmentView.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        NSLayoutConstraint.activate([
            headerImage.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 4),
            headerImage.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 3),
            header.topAnchor.constraint(equalTo: headerImage.topAnchor),
            header.leadingAnchor.constraint(equalToSystemSpacingAfter: headerImage.trailingAnchor, multiplier: 2)
        ])
        
        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalToSystemSpacingBelow: segmentView.bottomAnchor, multiplier: 20),
            stack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            button.widthAnchor.constraint(equalToConstant: 148),
            button.heightAnchor.constraint(equalToConstant: 52),
            view.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width)
        ])
        
        NSLayoutConstraint.activate([
          page4.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
          page4.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
          page4.view.topAnchor.constraint(equalToSystemSpacingBelow: segmentView.topAnchor, multiplier: 1)
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

extension Page5{
    @objc func segmentedControlValueChanged(_ sender: UISegmentedControl) {
        stack.isHidden = sender.selectedSegmentIndex != 0
        page4.view.isHidden = sender.selectedSegmentIndex != 1
       // contentView3.isHidden = sender.selectedSegmentIndex != 2
    }
}
