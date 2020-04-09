//
//  ShopCell.swift
//  Vens
//
//  Created by Ivan Pascual Palacios on 09/04/2020.
//  Copyright © 2020 Covid. All rights reserved.
//

import UIKit
protocol FavouriteButtonDelegate {
    func isFavouriteTapped(isFavourite: Bool)
}

class ShopCell: UITableViewCell {

    
    static let identifier = "ShopCell"
 
    @IBOutlet weak var favouriteButton: UIButton!
    @IBOutlet weak var shopTitle: UILabel!
    
    var favouriteDelegate: FavouriteButtonDelegate?
    private var isFavourite = false
    
 
    static func nib()-> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        shopTitle.text = "shopTitle"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    @IBAction func favouriteTapped(_ sender: UIButton) {
        if isFavourite {
            isFavourite = false
        } else {
           isFavourite = true
        }
        favouriteDelegate?.isFavouriteTapped(isFavourite: isFavourite)
        
    }
}
