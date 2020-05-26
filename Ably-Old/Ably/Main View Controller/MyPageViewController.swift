//
//  MyPageViewController.swift
//  Ably
//
//  Created by 이한길 on 2020/05/26.
//  Copyright © 2020 Yunis. All rights reserved.
//

import UIKit

class MyPageViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func tappedBenefitButton(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "BenefitViewController")
        vc?.modalTransitionStyle = .coverVertical
        vc?.modalPresentationStyle = .fullScreen
        self.present(vc!, animated: true, completion: nil)
    }
}
