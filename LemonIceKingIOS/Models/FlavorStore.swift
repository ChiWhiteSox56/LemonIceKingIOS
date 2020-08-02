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

    let flavorsJSONURL = URL(fileURLWithPath: "PreloadedFlavorList", relativeTo: FileManager.documentsDirectoryURL).appendingPathExtension("json")

    @Published var flavors: [Flavor] = [] {
        didSet {
            saveJSONFlavorStatuses()
        }
    }

    init() {
        loadJSONFlavors()
    }
    
    private func loadJSONFlavors() {

        print(flavorsJSONURL)

        let decoder = JSONDecoder()

        do {
            let flavorsData = try Data(contentsOf: flavorsJSONURL)
            flavors = try decoder.decode([Flavor].self, from: flavorsData)
        } catch let error {
            print (error)
        }
    }

    private func saveJSONFlavorStatuses() {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted

        do {
            let flavorData = try encoder.encode(flavors)

            // write encoded onbject to json file
            // atomicWrite - data is saved to a separate file, then if it succeeds, it's written to the final file. This way, if something gos wrong, the original json file is not corrupted
            try flavorData.write(to: flavorsJSONURL, options: .atomicWrite)

        } catch let error {
            print(error)
        }
    }
}
