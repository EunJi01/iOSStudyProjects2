//
//  ChatListViewController.swift
//  ChatList
//
//  Created by 황은지 on 2022/06/09.
//

import UIKit

class ChatListViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var chatList: [Chat] = Chat.list
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Data, Presentation, Layout 에 대한 정포가 필요함
        collectionView.dataSource = self
        collectionView.delegate = self
        
        // 최신 날짜순으로 정렬
        chatList = chatList.sorted(by: { chat1, chat2 in
            return chat1.date > chat2.date
        })
    }
}

// 이 extension은 위에서 collectionView의 Data, Presentation에 대한 정보를 self에 위임하여 처리할 것으로 정했기 때문에 필요하다.
extension ChatListViewController: UICollectionViewDataSource {
    
    // cell의 갯수를 몇개로 할건지에 대한 코드. count로 갯수만큼 설정해줬다.
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        chatList.count
    }
    
    // cell을 어떻게 표현할지에 대한 코드
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ChatListCollectionViewCell", for: indexPath) as? ChatListCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        let chat = chatList[indexPath.item]
        cell.configure(chat)
        return cell
    }
}

// 이 extension은 위에서 collectionView의 Layout에 대한 정보를 self에 위임하여 처리할 것으로 정했기 때문에 필요하다.
extension ChatListViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: 100)
    }
}
