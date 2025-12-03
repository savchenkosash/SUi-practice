//
//  SUi_practiceApp.swift
//  SUi practice
//
//  Created by alexander on 21.11.25.
//

import SwiftUI
import SwiftfulRouting

@main
struct SUi_practiceApp: App {
    var body: some Scene {
        WindowGroup {
            RouterView { _ in
                ContentView()
            }
            
//            ContentView()
        }
    }
}

extension UINavigationController: UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }

    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}
