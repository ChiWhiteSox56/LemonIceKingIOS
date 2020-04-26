//
//  Flavor.swift
//  LemonIceKingIOS
//
//  Created by Cindy Michalowski on 3/21/20.
//  Copyright © 2020 Cindy Michalowski. All rights reserved.
//

import Foundation

struct Flavor: Identifiable {
    
    let id = UUID()
    let name: String
    let imageName: String
    
    var isChecked: Bool = false
    
    func getName() -> String {
        return name
    }
}
