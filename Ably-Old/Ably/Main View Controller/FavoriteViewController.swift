//
//  FavoriteViewController.swift
//  Ably
//
//  Created by 이한길 on 2020/05/26.
//  Copyright © 2020 Yunis. All rights reserved.
//

import UIKit
import SwipeMenuViewController

var menuArray: [String] = ["상품", "마켓"]

class FavoriteViewController: UIViewController {
    
    @IBOutlet var swipeView: SwipeMenuView!
//    @IBOutlet var collectionView: UICollectionView!
    
    var favorites: [FavoriteSlot] = FavoriteSlot.dummies
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let favoriteCell = UINib(nibName: FavoriteCollectionViewCell.identifier, bundle: nil)
//        collectionView.register(favoriteCell, forCellWithReuseIdentifier: FavoriteCollectionViewCell.identifier)
        
        swipeView.dataSource = self
        swipeView.delegate = self
        
        let options: SwipeMenuViewOptions = .init()

        swipeView.reloadData(options: options)
    }
}

extension FavoriteViewController: SwipeMenuViewDelegate, SwipeMenuViewDataSource {
    func swipeMenuView(_ swipeMenuView: SwipeMenuView, viewControllerForPageAt index: Int) -> UIViewController {
        return FavoriteViewController()
    }
    
    func swipeMenuView(_ swipeMenuView: SwipeMenuView, titleForPageAt index: Int) -> String {
        return menuArray[index]
    }
    
    func numberOfPages(in swipeMenuView: SwipeMenuView) -> Int {
        return menuArray.count
    }
    

    // MARK - SwipeMenuViewDelegate
    func swipeMenuView(_ swipeMenuView: SwipeMenuView, viewWillSetupAt currentIndex: Int) {
        // Codes
    }

    func swipeMenuView(_ swipeMenuView: SwipeMenuView, viewDidSetupAt currentIndex: Int) {
        // Codes
    }

    func swipeMenuView(_ swipeMenuView: SwipeMenuView, willChangeIndexFrom fromIndex: Int, to toIndex: Int) {
        // Codes
    }

    func swipeMenuView(_ swipeMenuView: SwipeMenuView, didChangeIndexFrom fromIndex: Int, to toIndex: Int) {
        // Codes
    }
}


//extension FavoriteViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return favorites.count
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        guard let cell =
//            collectionView.dequeueReusableCell(withReuseIdentifier: FavoriteCollectionViewCell.identifier, for: indexPath) as? FavoriteCollectionViewCell else {
//                return UICollectionViewCell()
//        }
//            cell.updateUI(favorites[indexPath.row])
//           return cell
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//            return CGSize(width: 180, height: 245)
//        }
//
//        //위아래 라인 간격
//        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//            return 1
//        }
//
//        //옆 라인 간격
//        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//            return 1
//    }
//}
