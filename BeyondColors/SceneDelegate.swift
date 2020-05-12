//
//  SceneDelegate.swift
//  BeyondColors
//
//  Created by Diego Ribeiro on 09/05/20.
//  Copyright © 2020 Diego Ribeiro. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var appCoordinator: MainCoordinator!

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
            // 1 Verifique se a cena que está sendo transmitida pode ser reduzida para a UIWindowScene.
           guard let windowScene = (scene as? UIWindowScene) else {
               return
           }
           
           // 2 Crie um UIWindowe atribua a UIWindowSceneele.
           let appWindow = UIWindow(frame: windowScene.coordinateSpace.bounds)
           appWindow.windowScene = windowScene
           
           // 3  Execute a manutenção padrão da inicialização do controlador de navegação inicial. Passe isso ao coordenador do aplicativo e ligue start()para o coordenador do aplicativo.
           let navController = UINavigationController()
           appCoordinator = MainCoordinator(navigationController: navController)
           appCoordinator.start()

           // 4 Defina o controlador de navegação como a visualização raiz da janela. Torne a janela do aplicativo visível.
           appWindow.rootViewController = navController
           appWindow.makeKeyAndVisible()
           
           // 5 Defina a windowpropriedade que você criou anteriormente.

           window = appWindow
       // guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

