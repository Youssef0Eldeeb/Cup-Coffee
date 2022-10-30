//
//  NearestCoffeeCollectionViewCell.swift
//  Cup Coffee
//
//  Created by Youssef Eldeeb on 29/10/2022.
//

import UIKit

class NearestCoffeeCollectionViewCell: UICollectionViewCell {
    
    static let identifire = String(describing: NearestCoffeeCollectionViewCell.self)

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var rating: UILabel!
    @IBOutlet weak var distance: UILabel!
    
    @IBOutlet weak var blurView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupBlurViewUI()
    }
    
    func setup(_ coffeeShop: CoffeeShop){
        image.image = coffeeShop.image
        title.text = coffeeShop.title
        rating.text = coffeeShop.rating
        distance.text = coffeeShop.destance
    }

    func setupBlurViewUI(){
        blurView.roundCorners(corners: [.topRight, .bottomLeft], radius: 20)
        
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = blurView.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        blurView = blurEffectView
    }
}
