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
        print(Bundle.main.bundleURL)

        let documentsDirectoryURL = URL(fileURLWithPath: "PreloadedFlavorList", relativeTo: FileManager.documentsDirectoryURL).appendingPathExtension("json")

        let flavorsJSONURL = documentsDirectoryURL

        print((try? FileManager.default.contentsOfDirectory(atPath: FileManager.documentsDirectoryURL.path)) ?? [] )

        let decoder = JSONDecoder()

        do {
            let flavorsData = try Data(contentsOf: flavorsJSONURL)
            flavors = try decoder.decode([Flavor].self, from: flavorsData)
        } catch let error {
            print (error)
        }
    }
}
