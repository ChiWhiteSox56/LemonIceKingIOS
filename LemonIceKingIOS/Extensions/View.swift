//
//  View.swift
//  LemonIceKingIOS
//
//  Created by Cindy Michalowski on 5/1/20.
//  Copyright © 2020 Cindy Michalowski. All rights reserved.
//

import SwiftUI

extension View {

    func navigationBarColor(_ backgroundColor: UIColor?) -> some View {
        self.modifier(NavigationBarModifier(backgroundColor: backgroundColor))
    }
}
