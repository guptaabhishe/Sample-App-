//
//  PageController.swift
//  Sample App p2
//
//  Created by Abhishek Gupta on 04/09/23.
//


import UIKit

protocol OnboardingContainerViewControllerDelegate : AnyObject {
    func didCompleteOnBoarding()
}

class PageController:UIViewController{
    var viewControllers :[UIViewController] = []
    var pageViewController = UIPageViewController()
    weak var delegate : OnboardingContainerViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        setUp()
        style()
        layout()
        
    }
    
    
    private func setUp() {
        let page1 = Page1()
        let page2 = Page2()
        let page3 = Page3()
        let page5 = Page5()
        let page6 = Page6()
        
        viewControllers.append(page1)
        viewControllers.append(page2)
        viewControllers.append(page3)
        viewControllers.append(page5)
        viewControllers.append(page6)
        
        pageViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal)
        pageViewController.didMove(toParent: self)
        pageViewController.dataSource = self
    }
    
    private func style(){
        
        view.translatesAutoresizingMaskIntoConstraints = false
        pageViewController.view.translatesAutoresizingMaskIntoConstraints = false
        
        pageViewController.setViewControllers([viewControllers[0]], direction: .forward, animated: false,completion: nil)
        let pageControl = UIPageControl.appearance()
        pageControl.currentPageIndicatorTintColor = .systemBlue
        pageControl.pageIndicatorTintColor = .systemMint
        
    }
    
    private func layout(){
        
        addChild(pageViewController)
        
        view.addSubview(pageViewController.view)
        
        pageViewController.view.backgroundColor = .systemBackground
        
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: pageViewController.view.topAnchor),
            view.bottomAnchor.constraint(equalTo: pageViewController.view.bottomAnchor),
            view.leadingAnchor.constraint(equalTo: pageViewController.view.leadingAnchor),
            view.trailingAnchor.constraint(equalTo: pageViewController.view.trailingAnchor),
          
        ])
        
        for controller in viewControllers {
            NSLayoutConstraint.activate([
                controller.view.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height),
                controller.view.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width)
            ])
        }
        
    }
}


extension PageController:UIPageViewControllerDataSource{
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = viewControllers.firstIndex(of: viewController) , index-1 >= 0 else{
           return nil
        }
        return viewControllers[index-1]
}
    

func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
    let size:Int = viewControllers.count
    guard let index = viewControllers.firstIndex(of: viewController) , index+1 < size else{
       return nil
    }
    return viewControllers[index+1]
}
    
}



