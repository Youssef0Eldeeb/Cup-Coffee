//
//  DetailsViewController.swift
//  Cup Coffee
//
//  Created by Youssef Eldeeb on 30/10/2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var coffeeImage: UIImageView!
    
    
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var heartBtn: UIButton!
    @IBOutlet weak var cofffeeTitle: UILabel!
    @IBOutlet weak var coffeePrice: UILabel!
    @IBOutlet weak var rating: UILabel!
    @IBOutlet weak var discription: UILabel!
    @IBOutlet weak var quantityBtnUi01: UIButton!
    @IBOutlet weak var quantityBtnUi02: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        backBtn.layer.cornerRadius = backBtn.frame.size.width / 2
//        backBtn.clipsToBounds = true
//        heartBtn.layer.cornerRadius = heartBtn.frame.size.width / 2
//        heartBtn.clipsToBounds = true
    }

    @IBAction func backBtnPressed(_ sender: UIButton) {
    }
    
    
    @IBAction func heartBtnPressed(_ sender: UIButton) {
    }
    
    @IBAction func additionsBtn(_ sender: UIButton) {
    }
    
    @IBAction func coffeeNumberBtn(_ sender: UIButton) {
    }
    
    @IBAction func addToCartBtn(_ sender: UIButton) {
    }
    

}
