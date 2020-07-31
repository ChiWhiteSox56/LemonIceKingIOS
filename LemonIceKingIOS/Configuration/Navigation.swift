//
//  Navigation.swift
//  LemonIceKingIOS
//
//  Created by Cindy Michalowski on 7/31/20.
//  Copyright © 2020 Cindy Michalowski. All rights reserved.
//

import SwiftUI

// wrap UIKit ViewController
struct NavigationConfigurator: UIViewControllerRepresentable {

    var configure: (UINavigationController) -> Void = { _ in }

    func makeUIViewController(context: UIViewControllerRepresentableContext<NavigationConfigurator>) -> UINavigationController {
        return UINavigationController()
    }

    func updateUIViewController(_ uiViewController: UINavigationController, context: UIViewControllerRepresentableContext<NavigationConfigurator>) {
        if let nc = uiViewController.navigationController {
            self.configure(nc)
        }
    }
}
