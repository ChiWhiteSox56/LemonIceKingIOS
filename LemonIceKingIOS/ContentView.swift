//
//  ContentView.swift
//  LemonIceKingIOS
//
//  Created by Cindy Michalowski on 3/15/20.
//  Copyright © 2020 Cindy Michalowski. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var flavorStore: FlavorStore
    
    var body: some View {
        List(flavorStore.flavors) { flavor in
            IceCustomCheckbox(action: {}, flavorName: flavor.name, flavorImageName: flavor.imageName, isChecked: flavor.isChecked)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(flavorStore: FlavorStore() )
    }
}
