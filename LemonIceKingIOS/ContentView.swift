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
        NavigationView {
            List(flavorStore.flavors) { flavor in
                IceCustomCheckbox(action: {}, flavorId: flavor.id, flavorName: flavor.name, flavorImageName: flavor.imageName, isChecked: flavor.isChecked)
            }
            .navigationBarTitle("Lemon Ice King Flavor Tracker", displayMode: .inline)
            .navigationBarItems(trailing:
                Button(action: {
                    print("Flavor suggestion generator tapped!")
                }) {
                    Image("ice_flavor_generator").imageScale(.small)
                }
            )
                .navigationBarColor(UIColor.defaultNavigationBarColor)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(flavorStore: FlavorStore() )
    }
}
