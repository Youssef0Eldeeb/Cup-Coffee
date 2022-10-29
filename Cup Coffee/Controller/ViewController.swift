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
    
    @IBOutlet weak var popularCoffeeCollectionView: UICollectionView!
    @IBOutlet weak var nearestCoffeeCollectionView: UICollectionView!
    
    var popularCoffees: [PopularCoffee] = [
        .init(image: UIImage(named: "popularCoffee01"), time: "10 min delivery", rating: "5.0", title: "Cappuccino", price: "550.00", location: "Coffee cafe"),
        .init(image: UIImage(named: "popularCoffee01"), time: "7 min delivery", rating: "5.0", title: "Chocolate coffee", price: "510.00", location: "Bunny cafe"),
        .init(image: UIImage(named: "popularCoffee01"), time: "7 min delivery", rating: "5.0", title: " Coffee", price: "515.00", location: "Coffee hut"),
        .init(image: UIImage(named: "popularCoffee01"), time: "10 min delivery", rating: "5.0", title: "Cappuccino", price: "550.00", location: "Coffee cafe")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        registerCell()
        
        popularCoffeeCollectionView.delegate = self
        popularCoffeeCollectionView.dataSource = self
    }
    private func setupUI(){
        
        setupTitleUI()
        
        imageUser.layer.cornerRadius = imageUser.frame.size.width / 2
        imageUser.clipsToBounds = true
        
        searchBarTextField.layer.cornerRadius = 15
        searchBarTextField.clipsToBounds = true
        searchBarTextField.borderStyle = .none
        
    }
    private func setupTitleUI(){
        titleLabel.text = "Get your Coffee \non one finger tap"
        let str = "Coffee"
        let range = (titleLabel.text! as NSString).range(of: str)
        let attributedText = NSMutableAttributedString.init(string: titleLabel.text!)
        attributedText.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor(named: "CoffeeColor")!, range: range)
        titleLabel.attributedText = attributedText
    }
    private func registerCell(){
        popularCoffeeCollectionView.register(UINib(nibName: PopularCoffeeCollectionViewCell.identifire, bundle: nil), forCellWithReuseIdentifier: PopularCoffeeCollectionViewCell.identifire)
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return popularCoffees.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PopularCoffeeCollectionViewCell.identifire, for: indexPath) as! PopularCoffeeCollectionViewCell
        
        cell.setup(popularCoffees[indexPath.row])
        return cell
        
    }
    
    
}
