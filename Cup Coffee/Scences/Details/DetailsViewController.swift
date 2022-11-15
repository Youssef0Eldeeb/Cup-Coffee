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
    
    @IBOutlet weak var quantity00: UIButton!
    @IBOutlet weak var quantity01: UIButton!
    @IBOutlet weak var quantity02: UIButton!
    
    @IBOutlet weak var orderNumber: UILabel!
    
    var comingPopularCoffee: PopularCoffee?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupComingData()
    }
    
    private func setupUI(){
        backBtn.layer.cornerRadius = backBtn.frame.size.width / 2
        backBtn.clipsToBounds = true
        heartBtn.layer.cornerRadius = heartBtn.frame.size.width / 2
        heartBtn.clipsToBounds = true
        
        
        quantity00.layer.borderWidth = 1.5
        quantity01.layer.borderWidth = 1.5
        quantity02.layer.borderWidth = 1.5
        quantity00.layer.borderColor = UIColor(named: "DarkGreenColor")?.cgColor
        quantity01.layer.borderColor = UIColor(named: "DarkGreenColor")?.cgColor
        quantity02.layer.borderColor = UIColor(named: "DarkGreenColor")?.cgColor
    }
    
    private func setupComingData(){
        coffeeImage.image = comingPopularCoffee!.image
        coffeName.text = comingPopularCoffee!.title
        price.text = comingPopularCoffee!.price
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
        
        switch sender.tag{
        case 1:
            var num = Int(orderNumber.text!) ?? 0
            if num > 0 {
            num -= 1
            }
            orderNumber.text = String(num)
            break
        case 2:
            var num = Int(orderNumber.text!) ?? 0
            num += 1
            orderNumber.text = String(num)
            break
        default:
            break
        }
    }
   
    
    @IBAction func quantityBtns(_ sender: UIButton) {
        switch sender.tag{
        case 1:
            quantity00.backgroundColor = UIColor(named: "DarkGreenColor")
            quantity01.backgroundColor = UIColor(named: "BackgroundColor")
            quantity02.backgroundColor = UIColor(named: "BackgroundColor")
            
            quantity00.tintColor = UIColor(named: "BackgroundColor")
            quantity01.tintColor = UIColor(named: "DarkGreenColor")
            quantity02.tintColor = UIColor(named: "DarkGreenColor")
            break
        case 2:
            quantity00.backgroundColor = UIColor(named: "BackgroundColor")
            quantity01.backgroundColor = UIColor(named: "DarkGreenColor")
            quantity02.backgroundColor = UIColor(named: "BackgroundColor")

            quantity00.tintColor = UIColor(named: "DarkGreenColor")
            quantity01.tintColor = UIColor(named: "BackgroundColor")
            quantity02.tintColor = UIColor(named: "DarkGreenColor")
            break
        case 3:
            quantity00.backgroundColor = UIColor(named: "BackgroundColor")
            quantity01.backgroundColor = UIColor(named: "BackgroundColor")
            quantity02.backgroundColor = UIColor(named: "DarkGreenColor")

            quantity00.tintColor = UIColor(named: "DarkGreenColor")
            quantity01.tintColor = UIColor(named: "DarkGreenColor")
            quantity02.tintColor = UIColor(named: "BackgroundColor")
            break
        default:
            break
        }
    }
    
    @IBAction func addToCartBtn(_ sender: UIButton) {
        let vc = OrderViewController.instantiate(name: .Order)
        vc.modalTransitionStyle = .crossDissolve
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: false)
    }
    

}
