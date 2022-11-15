//
//  ViewController.swift
//  learning_swift
//
//  Created by swostik gautam on 15/11/2022.
//

import UIKit

class FirstScreenOfApp: UIViewController {
    let button = UIButton()
    let buttonTwo = UIButton()
    let buttonThree = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButton()
        setupButtonTwo()
        setupButtonThree()
        view.backgroundColor = .white
        title = "This is first Screen"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        
   
        
    }
    
    func setupButton(){
        view.addSubview(button)
        button.configuration = .filled()
        button.configuration?.baseBackgroundColor = .purple
        button.configuration?.title = "Goto Second Screen"
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(navitateToNextScreen), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 300),
            button.heightAnchor.constraint(equalToConstant: 50),
            
        ])
    }
    
    func setupButtonTwo(){
        view.addSubview(buttonTwo)
        buttonTwo.configuration = .filled()
        buttonTwo.configuration?.baseBackgroundColor = .systemPink
        buttonTwo.configuration?.title = "Goto Third Screen"
        buttonTwo.translatesAutoresizingMaskIntoConstraints = false
        buttonTwo.addTarget(self, action: #selector(navitateToThirdScreen), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            buttonTwo.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 10),
            buttonTwo.leadingAnchor.constraint(equalTo: button.leadingAnchor),
            buttonTwo.widthAnchor.constraint(equalToConstant: 300),
            buttonTwo.heightAnchor.constraint(equalToConstant: 50),
            
        ])
    }
    
    func setupButtonThree(){
        view.addSubview(buttonThree)
        buttonThree.configuration = .filled()
        buttonThree.configuration?.baseBackgroundColor = .systemPink
        buttonThree.configuration?.title = "Third Button"
        buttonThree.translatesAutoresizingMaskIntoConstraints = false
        buttonThree.addTarget(self, action: #selector(navitateToThirdScreen), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            buttonThree.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            buttonThree.leadingAnchor.constraint(equalTo: button.leadingAnchor),
            buttonThree.widthAnchor.constraint(equalToConstant: 300),
            buttonThree.heightAnchor.constraint(equalToConstant: 50),
            
        ])
    }
    
    @objc func navitateToNextScreen(){
        let nextScreen = SecondScreen()
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
    @objc func navitateToThirdScreen(){
        let nextScreen = ThirdScreen()
        navigationController?.pushViewController(nextScreen, animated: true)
    }
}

