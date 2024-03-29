//
//  Enums.swift
//  Fampay-Assignment
//
//  Created by Karan singla on 02/02/24.
//

import Foundation
import SwiftUI


// MARK: - Card Types
enum CardTypes: String {
    case HC1
    case HC3
    case HC5
    case HC6
    case HC9
}

// MARK: - Alignment type
enum CCAlignment: String {
    case left
    case right
    
    func value() -> Edge.Set {
        switch self {
        case .left:
            return .leading
        case .right:
            return .trailing
        }
    }
}
