//
//  ReloadViewController.swift
//  Cup Coffee
//
//  Created by Youssef Eldeeb on 05/11/2022.
//

import UIKit

class ReloadViewController: UIViewController {

    @IBOutlet weak var reloadImge: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gifImage = UIImage.gifImageWithName("Reload")
        reloadImge.image = gifImage
        
    }
    

}
