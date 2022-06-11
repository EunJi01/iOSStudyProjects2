//
//  FrameworkCell.swift
//  AppleFramework
//
//  Created by 황은지 on 2022/06/11.
//

import UIKit

class FrameworkCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    func configure(_ framework: AppleFramework) {
        thumbnailImageView.image = UIImage(named: framework.imageName)
        
        nameLabel.text = framework.name
    }
}
