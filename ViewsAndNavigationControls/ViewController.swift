//
//  ViewController.swift
//  ViewsAndNavigationControls
//
//  Created by Cuenta Personal on 31/5/22.
//

import UIKit
import WebKit

class ViewController: UIViewController {

	@IBOutlet weak var myView: UIView!
	@IBOutlet weak var myFakeView: UIView!
	@IBOutlet weak var myImageView: UIImageView!
	@IBOutlet weak var myWebView: WKWebView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		
		myWebView.load(URLRequest(url: URL(string: "https://google.es")!))
	}

	@IBAction func myButtonAction(_ sender: Any) {
		myFakeView.isHidden = true
	}
	
}

