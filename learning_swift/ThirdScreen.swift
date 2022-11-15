//
//  ThirdScreen.swift
//  learning_swift
//
//  Created by swostik gautam on 15/11/2022.
//

import UIKit

class ThirdScreen: UIViewController {

    let firstImageView: UIImageView = {
        let imageView = UIImageView(image:UIImage(named:  "illustrationsCustomMobileWarning"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.sizeToFit()
        return imageView
    }()
    
    let descriptionText: UILabel = {
        let textView = UILabel()
        textView.text = "Hello I am learning designing in UiKit"
        textView.font = UIFont.boldSystemFont(ofSize: 20)
        textView.textAlignment = .center
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    let descriptionSubText: UILabel = {
        let textView = UILabel()
        textView.text = "Hello I am learning designing in UiKit blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah"
        textView.textAlignment = .center
        textView.font = UIFont.systemFont(ofSize: 10)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.numberOfLines = 0
        return textView
    }()
    
    let buttonOne : UIButton = {
        let button = UIButton()
        button.configuration = .plain()
        button.configuration?.baseForegroundColor = .purple
        button.configuration?.title = "Previous"
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    let buttonTwo : UIButton = {
        let button = UIButton()
        button.configuration = .plain()
        button.configuration?.baseForegroundColor = .purple
        button.configuration?.title = "Next"
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    
    let buttonMiddle : UIButton = {
        let button = UIButton()
        button.configuration = .plain()
        button.configuration?.baseForegroundColor = .purple
        button.configuration?.title = "Middle"
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    let pageCOntroller : UIPageControl = {
        let pageCOntroller = UIPageControl()
        pageCOntroller.currentPage = 0
        pageCOntroller.numberOfPages = 4
        return pageCOntroller
    }()
    
//    fileprivate func buttonControlsInStack () {
//        let yellowView = UIView()
//        yellowView.backgroundColor = .yellow
//
//        let blueView = UIView()
//        blueView.backgroundColor = .blue
//
//        let stackView = UIStackView(arrangedSubviews: [buttonOne , buttonMiddle , buttonTwo])
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        stackView.distribution = .fillEqually
//
//        NSLayoutConstraint.activate([
//            stackView.bottomAnchor.constraint(equalTo: buttonTwo.topAnchor , constant: -20),
//            stackView.leadingAnchor.constraint(equalTo: descriptionSubText.leadingAnchor),
//            stackView.trailingAnchor.constraint(equalTo: descriptionSubText.trailingAnchor),
//            stackView.heightAnchor.constraint(equalToConstant: 50),
//        ])
//        view.addSubview(stackView)
//    }
//
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(firstImageView)
        view.addSubview(descriptionText)
        view.addSubview(descriptionSubText)
        view.addSubview(buttonOne)
        view.addSubview(buttonTwo)
        view.addSubview(buttonMiddle)
        
        setupNsLayout()
        //        let hfhfh = pp?(24 , "Swostil")
    }
    private func setupNsLayout(){
        NSLayoutConstraint.activate([
            firstImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            firstImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            //            firstImageView.heightAnchor.constraint(equalToConstant: 200),
            //            firstImageView.widthAnchor.constraint(equalToConstant: 200),
            //
            descriptionText.topAnchor.constraint(equalTo: firstImageView.bottomAnchor,  constant: 100),
            descriptionText.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            descriptionText.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            //            descriptionText.heightAnchor.constraint(equalToConstant: 100),
            
            //
            descriptionSubText.topAnchor.constraint(equalTo: descriptionText.bottomAnchor , constant: 10),
            descriptionSubText.leadingAnchor.constraint(equalTo: view.leadingAnchor , constant: 40),
            descriptionSubText.trailingAnchor.constraint(equalTo: view.trailingAnchor ,constant: -40),
            //
            buttonOne.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor ,constant: -20),
            buttonOne.leadingAnchor.constraint(equalTo: descriptionSubText.leadingAnchor),
            buttonOne.trailingAnchor.constraint(equalTo: buttonMiddle.leadingAnchor, constant: -20),
            //
            buttonTwo.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor ,constant: -20),
            buttonTwo.trailingAnchor.constraint(equalTo: descriptionSubText.trailingAnchor),
            buttonTwo.leadingAnchor.constraint(equalTo: buttonMiddle.trailingAnchor),
            //
            buttonMiddle.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -20),
            buttonMiddle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonMiddle.leadingAnchor.constraint(equalTo: buttonOne.trailingAnchor , constant: 40),
            buttonMiddle.trailingAnchor.constraint(equalTo: buttonTwo.leadingAnchor , constant:  -20),
            //
        ])
        
    }
    
    
}



struct PostModel{
    public var userId: String?
    public var id: Int?
    public var title: String?
    public var body: String?
    public var sub: SubData?
    public var map: [String  :Any]
}


struct SubData{}

