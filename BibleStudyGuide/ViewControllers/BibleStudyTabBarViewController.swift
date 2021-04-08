//
//  BibleStudyTabBarViewController.swift
//  BibleStudyGuide
//
//  Created by George Nyakundi on 08/04/2021.
//

import UIKit


class BibleStudyTabBarViewController: UITabBarController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAppLevelTabs()
    }
    
    /// Configures the App Level Tabs i.e Home, and Favorite
    func setupAppLevelTabs() {
        
        let bibleStudyHomeViewController = BibleStudyHomeViewController()
        let bibleStudyFavoriteViewController = BibleStudyFavoriteViewController()
        
        // View Controller Titles
        bibleStudyHomeViewController.title = "Browse"
        bibleStudyFavoriteViewController.title = "Favorite"
        
        // Set prefers large titles to the navbars
        bibleStudyHomeViewController.navigationItem.largeTitleDisplayMode = .always
        bibleStudyFavoriteViewController.navigationItem.largeTitleDisplayMode = .always
        
        // set a NavigationController
        let homeNav = UINavigationController(rootViewController: bibleStudyHomeViewController)
        let favoriteNav = UINavigationController(rootViewController: bibleStudyFavoriteViewController)
        
        // remove tint color
        homeNav.navigationBar.tintColor = .label
        favoriteNav.navigationBar.tintColor = .label
        
        // set the icons
        homeNav.tabBarItem = UITabBarItem(title:"Home", image: UIImage(systemName:"house"), tag: 1 )
        favoriteNav.tabBarItem = UITabBarItem(title:"Favorite", image: UIImage(systemName:"heart"), tag: 2)
        
        homeNav.navigationBar.prefersLargeTitles = true
        favoriteNav.navigationBar.prefersLargeTitles = true
        
        setViewControllers([homeNav, favoriteNav], animated: false)
        
        
    }
}

