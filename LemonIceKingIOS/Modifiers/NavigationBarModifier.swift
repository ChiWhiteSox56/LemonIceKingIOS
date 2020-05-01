//
//  NavigationBarModifier.swift
//  LemonIceKingIOS
//
//  Created by Cindy Michalowski on 5/1/20.
//  Copyright © 2020 Cindy Michalowski. All rights reserved.
//

// MARK: https://filipmolcik.com/navigationview-dynamic-background-color-in-swiftui/

import SwiftUI

struct NavigationBarModifier: ViewModifier {

    var backgroundColor: UIColor?

    init(backgroundColor: UIColor?) {
        self.backgroundColor = backgroundColor
        let customColorAppearance = UINavigationBarAppearance()
        customColorAppearance.configureWithTransparentBackground()
        customColorAppearance.backgroundColor = .clear
        customColorAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        customColorAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]

        UINavigationBar.appearance().standardAppearance = customColorAppearance
        UINavigationBar.appearance().compactAppearance = customColorAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = customColorAppearance
        UINavigationBar.appearance().tintColor = .white
    }

    func body(content: Content) -> some View {
        ZStack{
            content
            VStack {
                GeometryReader { geometry in
                    Color(self.backgroundColor ?? .clear)
                        .frame(height: geometry.safeAreaInsets.top)
                        .edgesIgnoringSafeArea(.top)
                    Spacer()
                }
            }
        }
    }
}
