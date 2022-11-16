//
//  SpotifyViewController.swift
//  learning_swift
//
//  Created by swostik gautam on 15/11/2022.
//

import UIKit

//let spotifyHeader : UIStackView = {
//    let grettingText = UILabel()
//    grettingText.text = getGretting()
//    grettingText.font = UIFont.boldSystemFont(ofSize: 20)
//
//    let spotifyHeder  = UIStackView(arrangedSubviews: [grettingText])
//    spotifyHeder.distribution = .equalSpacing
//
//    return spotifyHeder
//}()



class SpotifyViewController: UIViewController {
    
    fileprivate func spotifyHeader() {
        let grettingText = UILabel()
        grettingText.text = getGretting()
        grettingText.textColor = .white
        grettingText.font = UIFont.boldSystemFont(ofSize: 25)
        
        let notification = UIButton(type: .system)
        notification.setImage(UIImage(systemName: "bell"),for: .normal)
        notification.tintColor = .white
        
        
        let history = UIButton(type: .system)
        history.setImage(UIImage(systemName: "clock.arrow.circlepath"),for: .normal)
        history.tintColor = .white
        
        let settings = UIButton(type: .system)
        settings.setImage(UIImage(systemName: "gearshape"),for: .normal)
        settings.tintColor = .white
        
        let buttonGropus = UIStackView(arrangedSubviews: [notification , history, settings])
        buttonGropus.spacing = 20
        
        
        
        let spotifyHeder  = UIStackView(arrangedSubviews: [grettingText  , buttonGropus])
        spotifyHeder.distribution = .equalSpacing
        spotifyHeder.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(spotifyHeder)
        
        NSLayoutConstraint.activate([
            spotifyHeder.topAnchor.constraint(equalTo: view.topAnchor , constant: 50),
            spotifyHeder.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor , constant:20),
            spotifyHeder.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,constant: -20),
            
        ])
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkText
        self.tabBarController?.tabBar.isHidden = true
        self.navigationItem.setHidesBackButton(true, animated: true)
        spotifyHeader()
    }
    
    
    
}


func getGretting() ->String {
    let date = Date()
    let calendar = Calendar.current
    let hour = calendar.component(.hour, from: date)
    
    switch true{
    case (hour < 12):
        return "Good morning"
    case (hour < 17):
        return "Good afternoon"
    default:
        return "Good evening"
    }
}
