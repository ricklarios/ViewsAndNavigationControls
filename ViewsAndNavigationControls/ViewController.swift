//
//  ViewController.swift
//  ViewsAndNavigationControls
//
//  Created by Cuenta Personal on 31/5/22.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var myView: UIView!
	@IBOutlet weak var myImage: UIImageView!
	@IBOutlet weak var myFakeView: UIView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}

	@IBAction func myButtonAction(_ sender: Any) {
		myFakeView.isHidden = true
	}
	
}

