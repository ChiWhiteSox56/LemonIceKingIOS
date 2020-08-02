//
//  FileManager.swift
//  LemonIceKingIOS
//
//  Created by Cindy Michalowski on 8/2/20.
//  Copyright © 2020 Cindy Michalowski. All rights reserved.
//

import Foundation

public extension FileManager {
  static var documentsDirectoryURL: URL {
    return `default`.urls(for: .documentDirectory, in: .userDomainMask)[0]
  }
}
