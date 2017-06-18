//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Svilen on 6/19/17.
//  Copyright © 2017 Svilen. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {
    private var ratingButtons = 	[UIButton]()
    var rating = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    //MARK: Private methods
    private func setupButtons() {
        for _ in 0..<5 {
            let button = UIButton()
            button.backgroundColor = UIColor.red
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
            button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
            
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
            
            addArrangedSubview(button)
        }
    }
    func ratingButtonTapped(button:UIButton){
        print("Button pressed")
    }
    
}
