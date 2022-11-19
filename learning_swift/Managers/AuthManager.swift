//
//  AuthManager.swift
//  learning_swift
//
//  Created by swostik gautam on 18/11/2022.
//

import Foundation


final class AuthManager{
    static let auth = AuthManager()
    
    private init(){}
    
    
    
    var isSignedIn: Bool {
        return false
    }
    
    private var accessToken : String? {
        return nil
    }
    
    private var refreshToken : String? {
        return nil
    }
    
    private var tokenExpirationDate : Date?{
        return nil
    }
}
