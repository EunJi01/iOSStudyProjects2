//
//  ChatListCollectionViewCell.swift
//  ChatList
//
//  Created by 황은지 on 2022/06/09.
//

import UIKit

class ChatListCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbnail: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var chatLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
        
    // dequeue할 때(VC에서 Cell의 정보를 하나씩 받아올 때) 가장 먼저 호출되는 함수
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // thumnail의 모서리를 둥글게 바꿈
        thumbnail.layer.cornerRadius = 20
    }
    
    func configure(_ chat: Chat) {
        thumbnail.image = UIImage(named: chat.name)
        nameLabel.text = chat.name
        chatLabel.text = chat.chat
        dateLabel.text = formattedDateString(dateString: chat.date)
    }
    
    func formattedDateString(dateString: String) -> String {
        
        // String -> Date -> String
        // 2022-04-01 -> 4/1
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        
        // 문자열 -> date
        if let date = formatter.date(from: dateString) {
            formatter.dateFormat = "M/d"
            return formatter.string(from: date)
        } else {
            return ""
        }
    }
}
