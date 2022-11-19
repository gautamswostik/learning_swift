//
//  WelcomeViewController.swift
//  learning_swift
//
//  Created by swostik gautam on 18/11/2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
        self.navigationItem.setHidesBackButton(true, animated: true)
        
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.text = "Hello World"
        
        let imageView = UIImageView()
        imageView.loadNetworkImage(url: URL(string: "https://assets.phillips.com/image/upload/t_Website_LotDetailMainImage/v1/auctions/UK010620/8_001.jpg")!)
        
        view.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor , constant: 50)
            
        ])
    }
    
}
