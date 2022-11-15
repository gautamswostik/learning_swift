//
//  SecondScreen.swift
//  learning_swift
//
//  Created by swostik gautam on 15/11/2022.
//

import UIKit

class SecondScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        title = "This is Second Screen"
        let uiStack = UIStackView()
        uiStack.translatesAutoresizingMaskIntoConstraints = false
        uiStack.axis = .vertical
        uiStack.backgroundColor = .blue
        view.addSubview(uiStack)
        
        
        
        
        
        
        
        let scoreLabel = UILabel()
        scoreLabel.text = "Hello World"
        scoreLabel.textAlignment = .center
        
        
        uiStack.addArrangedSubview(scoreLabel)
        
        
        
        
        
        let textField = UITextField()
        uiStack.addArrangedSubview(textField)
        
        
        uiStack.addArrangedSubview(CustomView())
        
        let button = UIButton(frame: CGRect(x: 20, y: 20, width: 200, height: 60))
        button.setTitle("Email", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(UIColor.black, for: .normal)
        
        uiStack.addArrangedSubview(button)
        
        
        
        func buttonTapped() {
            let uiCont = UIIIViewController()
            navigationController?.pushViewController(uiCont, animated: true)
        }
        
        NSLayoutConstraint.activate([
            uiStack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            uiStack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            uiStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            uiStack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            
        ])
    }
}


class UIIIViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Home"
        navigationController?.navigationBar.tintColor = .black
        navigationController?.navigationBar.backgroundColor = .systemPink
        view.backgroundColor = .yellow
    }
}


class CustomView:  UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        let uiStack = UIStackView()
        uiStack.translatesAutoresizingMaskIntoConstraints = false
        uiStack.axis = .vertical
        uiStack.backgroundColor = .green
        self.addSubview(uiStack)
        
        let name = UILabel()
        name.text = "My Name"
        name.textAlignment = .center
        name.textColor = .red
        uiStack.addArrangedSubview(name)
        
        NSLayoutConstraint.activate([
            uiStack.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            uiStack.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            uiStack.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            uiStack.centerYAnchor.constraint(equalTo: self.centerYAnchor)
            
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}



func printNames(){
    for i in stride(from: 1, to: 10, by: 2) {
        print(i)
    }
}

