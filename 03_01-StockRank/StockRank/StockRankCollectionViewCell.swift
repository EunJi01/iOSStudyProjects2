//
//  StockRankCollectionViewCell.swift
//  StockRank
//
//  Created by 황은지 on 2022/05/27.
//

import UIKit

class StockRankCollectionViewCell: UICollectionViewCell {
    
    // uicomponent 연결하자
    // uicomponent 에 데이터를 업데이트 하는 코드를 넣자
    
    @IBOutlet weak var rankLable: UILabel!
    @IBOutlet weak var companyIconImageView: UIImageView!
    @IBOutlet weak var companyNameLable: UILabel!
    @IBOutlet weak var companyPriceLable: UILabel!
    @IBOutlet weak var diffLable: UILabel!
    
    func configure(_ stock: StockModel) {
        rankLable.text = "\(stock.rank)"
        companyIconImageView.image = UIImage(named: stock.imageName)
        companyNameLable.text = stock.name
        companyPriceLable.text = "\(stock.price) 원"
        diffLable.text = "\(stock.diff)%"
    }
}
