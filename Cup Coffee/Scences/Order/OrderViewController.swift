//
//  OrderViewController.swift
//  Cup Coffee
//
//  Created by Youssef Eldeeb on 02/11/2022.
//

import UIKit

class OrderViewController: UIViewController {

    @IBOutlet weak var locView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        locView.layer.borderWidth = 1.5
        locView.layer.borderColor = UIColor.black.cgColor
    }
    
    @IBAction func backBtn(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    @IBAction func payBtn(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Order", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "ReloadViewController") as! ReloadViewController
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true)
//        let storyboard = UIStoryboard(name: "Order", bundle: nil)
//        let controller = storyboard.instantiateViewController(withIdentifier: "DoneViewController") as! DoneViewController
//        controller.modalPresentationStyle = .fullScreen
//        present(controller, animated: true)
    }
    
    

}

