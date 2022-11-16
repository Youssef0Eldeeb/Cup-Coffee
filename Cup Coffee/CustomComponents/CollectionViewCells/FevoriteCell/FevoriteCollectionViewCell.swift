//
//  FevoriteCollectionViewCell.swift
//  Cup Coffee
//
//  Created by Youssef Eldeeb on 16/11/2022.
//

import UIKit

class FevoriteCollectionViewCell: UICollectionViewCell {

    static let identifire = String(describing: FevoriteCollectionViewCell.self)
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var price: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup(favoriteCup: ShopSpecial){
        image.image = favoriteCup.image
        name.text = favoriteCup.name
        price.text = favoriteCup.price
    }

}
