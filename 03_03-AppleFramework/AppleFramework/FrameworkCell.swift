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
    
    // 4열일 때 글자가 잘리는 현상 방지: 폰트사이즈 조정
    override func awakeFromNib() {
        super.awakeFromNib()
        nameLabel.numberOfLines = 1
        nameLabel.adjustsFontSizeToFitWidth = true
    }
    
    func configure(_ framework: AppleFramework) {
        thumbnailImageView.image = UIImage(named: framework.imageName)
        
        nameLabel.text = framework.name
    }
}
