//
//  SceneDelegate.swift
//  AddRootViewController
//
//  Created by Gilang Ramadhan on 20/03/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {

        guard let windowScene = scene as? UIWindowScene else { return }
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = UINavigationController(rootViewController: MyTabBarController())
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
    }

}
