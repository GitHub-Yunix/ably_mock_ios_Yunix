//
//  DataController.swift
//  Ably
//
//  Created by 이한길 on 2020/05/26.
//  Copyright © 2020 Yunis. All rights reserved.
//

import UIKit

class FavoriteSlot {
    var image: UIImage?
    var name: String
    var count: String
    
    init(image: UIImage?, name: String, count: String) {
        self.image = image
        self.name = name
        self.count = count
    }
}

extension FavoriteSlot {
    static let dummies: [FavoriteSlot] = [
        FavoriteSlot(image: nil, name: "기본 서랍", count: "10"),
        FavoriteSlot(image: nil, name: "기본 서랍asdf", count: "10"),
        FavoriteSlot(image: nil, name: "기본 서랍vvv", count: "10"),
        FavoriteSlot(image: nil, name: "기본 서랍424", count: "10"),
        FavoriteSlot(image: nil, name: "기본 서랍", count: "10"),
        FavoriteSlot(image: nil, name: "기본 서랍", count: "10"),
        FavoriteSlot(image: nil, name: "기본 서랍666", count: "10"),
        FavoriteSlot(image: nil, name: "기본 서랍", count: "10")
    ]
}
