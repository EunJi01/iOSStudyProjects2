//
//  StockRankViewController.swift
//  StockRankUITests
//
//  Created by 황은지 on 2022/05/26.
//

import UIKit

class StockRankViewController: UIViewController {

    let stockList: [StockModel] = StockModel.list
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    // UiCollectionView 사용 시 고려할 것: Data, Presentation, Layout
    // Data - 어떤 데이를 사용할지? -> stockList
    // Presentation - 셀을 어떻게 표현할지?
    // Layout - 셀들 레이아웃을 어떻게 할지?
    
    // protocol -
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
    }
 }

extension StockRankViewController: UICollectionViewDataSource {
    
    // collectionView에 몇개의 셀이 필요한가?
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stockList.count
    }
    
    // collectionView의 각 셀을 어떻게 표현하는가?
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StockRankCollectionViewCell", for: indexPath) as? StockRankCollectionViewCell else {
            return UICollectionViewCell()
        }

        let stock = stockList[indexPath.item]
        cell.configure(stock)
        return cell
    }
}

extension StockRankViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // width = collectionView
        // height = 80
        
        return CGSize(width: collectionView.bounds.width, height: 80)
    }
}
