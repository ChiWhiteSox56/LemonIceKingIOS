//
//  IceCustomCheckbox.swift
//  LemonIceKingIOS
//
//  Created by Cindy Michalowski on 3/29/20.
//  Copyright © 2020 Cindy Michalowski. All rights reserved.
//

import SwiftUI

struct IceCustomCheckbox: View {
    
    let action: () -> Void
    let flavorId: UUID
    let flavorName: String
    let flavorImageName: String
    @State var isChecked: Bool = false
    
    init(action: @escaping () -> Void, flavorId: UUID, flavorName: String, flavorImageName: String, isChecked: Bool) {
        self.action = action
        self.flavorId = flavorId
        self.flavorName = flavorName
        self.flavorImageName = flavorImageName
        self.isChecked = isChecked
    }
    
    var body: some View {
        HStack() {
            Button(action: toggle) {
                Image(isChecked ? flavorImageName : "ice_unchecked")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit )
                    .frame(width: 60, height: 60, alignment: .init(horizontal: .leading, vertical: .center))
            }
            Text(flavorName)
                .fontWeight(.medium)
        }
    }
    
    func toggle() {
        isChecked = !isChecked
    }
}
