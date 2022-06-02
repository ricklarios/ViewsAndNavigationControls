//
//  PageViewController.swift
//  ViewsAndNavigationControls
//
//  Created by Rick Larios on 2/6/22.
//

import UIKit

class PageViewController: UIPageViewController {
	
	private var myControllers: [UIViewController] = []

    override func viewDidLoad() {
        super.viewDidLoad()

		let myOrangeVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "vcOrange")
		
		let myPurpleVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "vcPurple")
		
		myControllers.append(myOrangeVC)
		myControllers.append(myPurpleVC)
		
		setViewControllers([myOrangeVC], direction: .forward, animated: true, completion: nil) // Establezco cual va a ser el primer view controller que veamos
		
		dataSource = self
		
    }
    
}

extension PageViewController: UIPageViewControllerDataSource {
	func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
		// Establecemos qué pasa si vamos atrás
		let index = myControllers.firstIndex(of: viewController)
		if index == 0 {
			return myControllers.last
		}
		return myControllers.first
	}
	
	func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
		// Establecemos qué pasa si vamos adelante
		let index = myControllers.firstIndex(of: viewController)
		if index == 0 {
			return myControllers.last
		}
		return myControllers.first
	}
	
	
	
}
