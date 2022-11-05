//
//  DoneViewController.swift
//  Cup Coffee
//
//  Created by Youssef Eldeeb on 05/11/2022.
//

import UIKit

class DoneViewController: UIViewController {
    
    @IBOutlet weak var doneImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let gifImage = UIImage.gifImageWithName("Done")
        doneImage.image = gifImage
    }
    

}
