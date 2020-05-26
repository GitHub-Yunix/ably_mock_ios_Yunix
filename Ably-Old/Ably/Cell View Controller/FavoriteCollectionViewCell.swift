//
//  FavoriteCollectionViewCell.swift
//  Ably
//
//  Created by 이한길 on 2020/05/26.
//  Copyright © 2020 Yunis. All rights reserved.
//

import UIKit

class FavoriteCollectionViewCell: UICollectionViewCell {
    @IBOutlet var slotImage: UIImageView!
    @IBOutlet var slotName: UILabel!
    @IBOutlet var slotCount: UILabel!
    
    static let identifier: String = "FavoriteCollectionViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateUI(_ favorite: FavoriteSlot) {
        slotImage.image = favorite.image
        slotName.text = favorite.name
        slotCount.text = favorite.count
    }
}
