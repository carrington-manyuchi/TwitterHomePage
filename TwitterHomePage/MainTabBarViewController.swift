//
//  ViewController.swift
//  TwitterHomePage
//
//  Created by DA MAC M1 157 on 2023/09/13.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        view.backgroundColor = .systemBackground
        
        let home = UINavigationController(rootViewController: HomeVC())
        let search = UINavigationController(rootViewController: SearchVC())
        let notification = UINavigationController(rootViewController: NotificationsVC())
        let directMessages = UINavigationController(rootViewController: DirectMessagesVC())
        
        home.tabBarItem.image = UIImage(systemName: "house")
        home.tabBarItem.selectedImage = UIImage(systemName: "house.fill")

        search.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        search.tabBarItem.selectedImage = UIImage(systemName: "magnifyingglass.circle.fill")
        
        notification.tabBarItem.image = UIImage(systemName: "bell")
        notification.tabBarItem.selectedImage = UIImage(systemName: "bell.fill")
        
        directMessages.tabBarItem.image = UIImage(systemName: "envelope")
        directMessages.tabBarItem.selectedImage = UIImage(systemName: "envelope.fill")
        
        setViewControllers([home, search, notification, directMessages], animated: true)
    }


}

