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
    
    @IBAction func backToHomeBtn(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "TabBar") as! CustomTabBar
        UIApplication.shared.windows.first?.rootViewController = controller
        UIApplication.shared.windows.first?.makeKeyAndVisible()
        
        
//        controller.modalPresentationStyle = .fullScreen
//        self.present(controller, animated: true)
        
    }
    
}
