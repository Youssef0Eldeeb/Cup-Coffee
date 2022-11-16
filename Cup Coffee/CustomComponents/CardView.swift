//
//  CardView.swift
//  Cup Coffee
//
//  Created by Youssef Eldeeb on 16/11/2022.
//

import Foundation
import UIKit

class CardView: UIView{
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialSetup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initialSetup()
    }
    
    private func initialSetup(){
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = .zero
        layer.shadowOpacity = 0.1
    }
}
