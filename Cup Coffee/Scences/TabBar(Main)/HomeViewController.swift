//
//  ViewController.swift
//  Cup Coffee
//
//  Created by Youssef Eldeeb on 26/10/2022.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageUser: UIImageView!
    @IBOutlet weak var searchBarTextField: UITextField!
    
    @IBOutlet weak var popularCoffeeCollectionView: UICollectionView!
    @IBOutlet weak var nearestCoffeeCollectionView: UICollectionView!
    
    var popularCoffees: [PopularCoffee] = [
        .init(image: UIImage(named: "Cappuccino"), time: "10 min delivery", rating: "5.0", title: "Cappuccino", price: "550.00", location: "Coffee cafe"),
        .init(image: UIImage(named: "Chocolate Coffee"), time: "7 min delivery", rating: "5.0", title: "Chocolate Coffee", price: "510.00", location: "Bunny cafe"),
        .init(image: UIImage(named: "Coffee Milk"), time: "7 min delivery", rating: "5.0", title: " Coffee Milk", price: "515.00", location: "Coffee hut"),
        .init(image: UIImage(named: "Coffee"), time: "10 min delivery", rating: "5.0", title: "Coffee", price: "550.00", location: "Coffee cafe")
    ]
    var cofffeeShops: [CoffeeShop] = [
        .init(image: UIImage(named: "CoffeeShop01"), title: "Asley coffee", rating: "5.0/ 105 ratings", destance: "1.5 km"),
        .init(image: UIImage(named: "CoffeeShop02"), title: "Old town coffee", rating: "4.0/ 125 ratings", destance: "2.4 km"),
        .init(image: UIImage(named: "CoffeeShop01"), title: "Asley coffee", rating: "5.0/ 105 ratings", destance: "1.5 km"),
        .init(image: UIImage(named: "CoffeeShop02"), title: "Old town coffee", rating: "4.0/ 125 ratings", destance: "2.4 km")
    
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        registerCell()
        
        popularCoffeeCollectionView.delegate = self
        popularCoffeeCollectionView.dataSource = self
        
        nearestCoffeeCollectionView.delegate = self
        nearestCoffeeCollectionView.dataSource = self
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
        nearestCoffeeCollectionView.register(UINib(nibName: NearestCoffeeCollectionViewCell.identifire, bundle: nil), forCellWithReuseIdentifier: NearestCoffeeCollectionViewCell.identifire)
    }


}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView{
        case popularCoffeeCollectionView:
            return popularCoffees.count
        case nearestCoffeeCollectionView:
            return cofffeeShops.count
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView{
        case popularCoffeeCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PopularCoffeeCollectionViewCell.identifire, for: indexPath) as! PopularCoffeeCollectionViewCell
            
            cell.setup(popularCoffees[indexPath.row])
            return cell
        case nearestCoffeeCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NearestCoffeeCollectionViewCell.identifire, for: indexPath) as! NearestCoffeeCollectionViewCell
            
            cell.setup(cofffeeShops[indexPath.row])
            return cell
        default:
            return UICollectionViewCell()
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == popularCoffeeCollectionView {
            let vc = DetailsViewController.instantiate(name: .Details)
            vc.comingPopularCoffee = popularCoffees[indexPath.row]
            vc.modalTransitionStyle = .crossDissolve
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: false)
            
        }else{
            let vc = NearbyCafesViewController.instantiate(name: .NearbyCafes)
            vc.modalTransitionStyle = .crossDissolve
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: false)
        }
    }
    
    
}
