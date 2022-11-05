//
//  NearbyCafesViewController.swift
//  Cup Coffee
//
//  Created by Youssef Eldeeb on 02/11/2022.
//

import UIKit

class NearbyCafesViewController: UIViewController {

    @IBOutlet weak var backBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        backBtn.layer.cornerRadius = backBtn.frame.size.width / 2
        backBtn.clipsToBounds = true
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true)
    }
    
    

}
