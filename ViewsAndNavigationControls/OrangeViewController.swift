//
//  OrangeViewController.swift
//  ViewsAndNavigationControls
//
//  Created by Rick Larios on 3/6/22.
//

import UIKit

class OrangeViewController: UIViewController {

	@IBOutlet weak var mySearchBar: UISearchBar!
	@IBOutlet weak var myLabel: UILabel!
	
	override func viewDidLoad() {
        super.viewDidLoad()

		myLabel.isHidden = true
		mySearchBar.delegate = self
    }
    
}

extension OrangeViewController: UISearchBarDelegate {
	
	// Le indicamos qué hacer al pulsar Buscar/Enter
	func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
		mySearchBar.resignFirstResponder() // Cerramos teclado
		
		myLabel.text = "El texto introducido es: \(mySearchBar.text ?? "Buscando...")"
		myLabel.isHidden = false
	}
}
