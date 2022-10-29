//
//  PopularCoffeeCollectionViewCell.swift
//  Cup Coffee
//
//  Created by Youssef Eldeeb on 28/10/2022.
//

import UIKit

class PopularCoffeeCollectionViewCell: UICollectionViewCell {
    
    static let identifire = String(describing: PopularCoffeeCollectionViewCell.self)

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var rating: UILabel!
    @IBOutlet weak var coffeeName: UILabel!
    @IBOutlet weak var Price: UILabel!
    @IBOutlet weak var location: UILabel!
    
    
    func setup(_ coffee: PopularCoffee){
        
        image.image = coffee.image
        time.text = coffee.time
        rating.text = coffee.rating
        coffeeName.text = coffee.title
        Price.text = coffee.price
        location.text = coffee.location
    }

}
