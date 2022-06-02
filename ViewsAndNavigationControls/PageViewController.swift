//
//  PageViewController.swift
//  ViewsAndNavigationControls
//
//  Created by Rick Larios on 2/6/22.
//

import UIKit

class PageViewController: UIPageViewController {
	
	// Creo un array al que añadiré cada VC
	private var myControllers: [UIViewController] = []

    override func viewDidLoad() {
        super.viewDidLoad()

		// Creo un UIStoryboard con el VC identificado como vcOrange
		let myOrangeVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "vcOrange")
		// Creo un UIStoryboard con el VC identificado como vcPurple
		let myPurpleVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "vcPurple")
		
		// Añado mis vistas al array de VC
		myControllers.append(myOrangeVC)
		myControllers.append(myPurpleVC)
		
		// Establezco cual va a ser el primer VC que veamos
		setViewControllers([myOrangeVC], direction: .forward, animated: true, completion: nil)
		
		// Le indico que el protocolo dataSource está definido dentro de la clase (extension)
		dataSource = self
		
    }
    
}

// Defino por extensión el protocolo dataSource donde le indicamos qué hacer si vamos pasando páginas
extension PageViewController: UIPageViewControllerDataSource {
	
	// Si vamos atrás
	func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
		let index = myControllers.firstIndex(of: viewController)
		if index == 0 {
			return myControllers.last
		}
		return myControllers.first
	}
	
	// Si vamos adelante
	func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
				let index = myControllers.firstIndex(of: viewController)
		if index == 0 {
			return myControllers.last
		}
		return myControllers.first
	}
	
	
	
}
