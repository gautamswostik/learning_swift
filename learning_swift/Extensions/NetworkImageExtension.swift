//
//  NetworkImageExtension.swift
//  learning_swift
//
//  Created by swostik gautam on 18/11/2022.
//

import Foundation
import UIKit


extension UIImageView {
    func loadNetworkImage(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
