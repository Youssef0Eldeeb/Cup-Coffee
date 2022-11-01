//
//  DetailsViewController.swift
//  Cup Coffee
//
//  Created by Youssef Eldeeb on 30/10/2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var coffeeImage: UIImageView!
    @IBOutlet weak var coffeName: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var rating: UILabel!
    @IBOutlet weak var discription: UILabel!
    
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var heartBtn: UIButton!
    @IBOutlet weak var quantity01: UIButton!
    @IBOutlet weak var quantity02: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    func setupUI(){
        backBtn.layer.cornerRadius = backBtn.frame.size.width / 2
        backBtn.clipsToBounds = true
        heartBtn.layer.cornerRadius = heartBtn.frame.size.width / 2
        heartBtn.clipsToBounds = true
        
        quantity01.layer.borderWidth = 1.5
        quantity02.layer.borderWidth = 1.5
        quantity01.layer.borderColor = UIColor(named: "DarkGreenColor")?.cgColor
        quantity02.layer.borderColor = UIColor(named: "DarkGreenColor")?.cgColor
    }

    @IBAction func backBtnPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    
    @IBAction func heartBtnPressed(_ sender: UIButton) {
        print("heart pressed")
    }
    
    @IBAction func additionsBtn(_ sender: UIButton) {
        print("add pressed")
    }
    
    @IBAction func coffeeNumberBtn(_ sender: UIButton) {
        print("num of coffee pressed")
    }
    
    @IBAction func addToCartBtn(_ sender: UIButton) {
        print("add to cart pressed")
    }
    

}
