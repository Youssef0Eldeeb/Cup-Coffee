//
//  UIViewController+.swift
//  Cup Coffee
//
//  Created by Youssef Eldeeb on 02/11/2022.
//

import Foundation
import UIKit

extension UIViewController{
    static var identifire: String{
       return String(describing: self)
    }
    static func instantiate(name: StoryboardEnum) -> Self{
        let storyboard = UIStoryboard(name: name.rawValue, bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: identifire) as! Self
        return controller
        
    }
    
    enum StoryboardEnum: String {
        case Details = "Details"
        case Order = "Order"
        case NearbyCafes = "NearbyCafes"
        case Reserve = "Reserve"
        
    }
    
}
