//
//  FlavorStore.swift
//  LemonIceKingIOS
//
//  Created by Cindy Michalowski on 3/21/20.
//  Copyright © 2020 Cindy Michalowski. All rights reserved.
//


import Combine
import Foundation

class FlavorStore: ObservableObject {
    @Published var flavors: [Flavor] = []

    init() {
        loadJSONFlavors()
    }
    
    private func loadJSONFlavors() {

        guard let flavorsJSONURL = Bundle.main.url(forResource: "PreloadedFlavorList", withExtension: ".json") else
        {
            return
        }

        let decoder = JSONDecoder()

        do {
            let flavorsData = try Data(contentsOf: flavorsJSONURL)
            flavors = try decoder.decode([Flavor].self, from: flavorsData)
            print(flavors)
        } catch let error {
            print (error)
        }
    }
}
