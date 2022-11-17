//
//  ChipViewController.swift
//  learning_swift
//
//  Created by swostik gautam on 17/11/2022.
//

import UIKit

class ChipViewController: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        let uiView = UIView()
        
        self.addSubview(uiView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
