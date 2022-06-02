//
//  ViewController.swift
//  ViewsAndNavigationControls
//
//  Created by Rick Larios on 31/5/22.
//

import UIKit
import WebKit
import MapKit

class ViewController: UIViewController {

	@IBOutlet weak var myView: UIView!
	@IBOutlet weak var myFakeView: UIView!
	@IBOutlet weak var myImageView: UIImageView!
	@IBOutlet weak var myWebView: WKWebView!
	@IBOutlet weak var myMap: MKMapView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		// title = "My View Controller"
		
		myWebView.load(URLRequest(url: URL(string: "https://google.es")!))
		
		myMap.centerCoordinate = CLLocationCoordinate2D(latitude: 37.338136, longitude:  -5.826262)
	}

	@IBAction func myButtonAction(_ sender: Any) {
		myFakeView.isHidden = true
	}
	
}

