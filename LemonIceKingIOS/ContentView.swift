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
            VStack {
                HStack(spacing: 80) {
                    Text(flavor.name)
                    Spacer()
                    Image("ice_unchecked")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .init(horizontal: .trailing, vertical: .center))
                }.padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(flavorStore: FlavorStore() )
    }
}
