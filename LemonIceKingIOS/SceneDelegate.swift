//
//  SceneDelegate.swift
//  LemonIceKingIOS
//
//  Created by Cindy Michalowski on 3/15/20.
//  Copyright © 2020 Cindy Michalowski. All rights reserved.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
  var window: UIWindow?

  func scene(
    _ scene: UIScene,
    willConnectTo _: UISceneSession,
    options _: UIScene.ConnectionOptions
  ) {
    guard let windowScene = scene as? UIWindowScene
    else { return }

    let window = UIWindow(windowScene: windowScene)
    window.rootViewController = UIHostingController(
      rootView: ContentView( flavorStore: FlavorStore() )
    )
    self.window = window
    window.makeKeyAndVisible()
  }
}
