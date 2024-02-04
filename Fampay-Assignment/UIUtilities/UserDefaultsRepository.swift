//
//  UserDefaultsRepository.swift
//  Fampay-Assignment
//
//  Created by Karan singla on 02/02/24.
//

import Foundation
import SwiftUI

// MARK: - User Default Repository
struct UserDefaultsRepository {
   
    static let UD = UserDefaults.standard
    
    // SETs Value in user defaults
    static func SET<T: Decodable>(key: String, value: [T]) {
        UD.set(value, forKey: key)
    }
    
    // GETs Value from user defaults
    static func GET<T: Decodable>(key: String) -> [T]? {
        return UD.object(forKey: key) as? [T]
    }
}
