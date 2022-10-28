//
//  ViewController.swift
//  Cup Coffee
//
//  Created by Youssef Eldeeb on 26/10/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageUser: UIImageView!
    @IBOutlet weak var searchBarTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    func setupUI(){
        
        setupTitleUI()
        
        imageUser.layer.cornerRadius = imageUser.frame.size.width / 2
        imageUser.clipsToBounds = true
        
        searchBarTextField.layer.cornerRadius = 15
        searchBarTextField.clipsToBounds = true
        searchBarTextField.borderStyle = .none
        
    }
    func setupTitleUI(){
        titleLabel.text = "Get your Coffee \non one finger tap"
        let str = "Coffee"
        let range = (titleLabel.text! as NSString).range(of: str)
        let attributedText = NSMutableAttributedString.init(string: titleLabel.text!)
        attributedText.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor(named: "CoffeeColor")!, range: range)
        titleLabel.attributedText = attributedText
    }


}

