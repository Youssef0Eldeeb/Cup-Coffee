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
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            let storyboard = UIStoryboard(name: "Order", bundle: nil)
            let controller = storyboard.instantiateViewController(withIdentifier: "DoneViewController") as! DoneViewController
            controller.modalPresentationStyle = .fullScreen
            self.present(controller, animated: true)
        }
        
    }
    

}
