//
//  SpotifyTabBarViewController.swift
//  learning_swift
//
//  Created by swostik gautam on 17/11/2022.
//

import UIKit

class SpotifyTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
        self.navigationItem.setHidesBackButton(true, animated: true)
        
        
        let viewOne = HomeViewController()
        let viewTwo = SearchViewController()
        let viewThree = LibraryViewController()
        
        viewOne.title = "Home"
        viewTwo.title = "Search"
        viewThree.title = "Library"
        
        viewOne.navigationItem.largeTitleDisplayMode = .always
        viewTwo.navigationItem.largeTitleDisplayMode = .always
        viewThree.navigationItem.largeTitleDisplayMode = .always
        
        let navOne = UINavigationController(rootViewController: viewOne)
        let navTwo = UINavigationController(rootViewController: viewTwo)
        let navThree = UINavigationController(rootViewController: viewThree)
        
        navOne.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 0)
        navTwo.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag: 1)
        navThree.tabBarItem = UITabBarItem(title: "Library", image: UIImage(systemName: "music.note.list"), tag: 2)
        
        navOne.navigationBar.prefersLargeTitles = true
        navTwo.navigationBar.prefersLargeTitles = true
        navThree.navigationBar.prefersLargeTitles = true
        
        setViewControllers([navOne , navTwo , navThree], animated: true)
       
    }
    

   
}
