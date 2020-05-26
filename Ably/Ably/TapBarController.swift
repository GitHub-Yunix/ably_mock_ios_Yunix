//
//  TapBarController.swift
//  ios
//
//  Created by 이한길 on 2020/05/27.
//  Copyright © 2020 Jerry Jung. All rights reserved.
//

import UIKit
import CoreGraphics

class TabBarController: UITabBarController, UITabBarControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let item1 = HomeViewController()
        let icon1 = UITabBarItem(title: "홈", image: UIImage(named: "HomeDisableButton"), selectedImage: UIImage(named: "HomeAbleButton"))
        icon1.imageInsets.bottom = 45
        icon1.imageInsets.top = 45
        item1.tabBarItem = icon1
        
        let item2 = StyleViewController()
        let icon2 = UITabBarItem(title: "스타일", image: UIImage(named: "StyleDisableButton"), selectedImage: UIImage(named: "StyleAbleButton"))
        icon2.imageInsets.bottom = 45
        icon2.imageInsets.top = 45
        item2.tabBarItem = icon2
        
        let item3 = MarketViewController()
        let icon3 = UITabBarItem(title: "마켓", image: UIImage(named: "MarketDisableButton"), selectedImage: UIImage(named: "MarketAbleButton"))
        icon3.imageInsets.bottom = 45
        icon3.imageInsets.top = 45
        item3.tabBarItem = icon3
        
        let item4 = FavoriteViewController()
        let icon4 = UITabBarItem(title: "찜", image: UIImage(named: "FavoriteDisableButton"), selectedImage: UIImage(named: "FavoriteAbleButton"))
        icon4.imageInsets.bottom = 45
        icon4.imageInsets.top = 45
        item4.tabBarItem = icon4
        
        let item5 = MyPageViewController()
        let icon5 = UITabBarItem(title: "마이페이지", image: UIImage(named: "MyPageDisableButton"), selectedImage: UIImage(named: "MyPageAbleButton"))
        icon5.imageInsets.bottom = 45
        icon5.imageInsets.top = 45
        item5.tabBarItem = icon5
        
        let controllers = [item1, item2, item3, item4, item5]  //array of the root view controllers displayed by the tab bar interface
        
        self.tabBar.barTintColor = UIColor(hex: 0xFFFFFF, alpha: 1)
        self.tabBar.tintColor = UIColor(hex: 0xFE5160, alpha: 1)
        
        self.viewControllers = controllers
        
//        navigationController?.navigationBar.barTintColor = UIColor(hex: 0xFFFFFF, alpha: 1)
//        navigationController?.navigationBar.setValue(true, forKey: "hidesShadow")
    }

    //Delegate methods
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        print("Should select viewController: \(viewController.title ?? "") ?")
        return true;
    }
}
