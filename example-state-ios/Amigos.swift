//
//  Amigos.swift
//  example-state-ios
//
//  Created by Emiliano Diaz on 29/05/2023.
//

import Foundation
import SwiftUI

struct Amigos: Identifiable {
    let id = UUID()
    let name : String
    let lastName : String
    let imagen : String
    let isFriend : Bool
}
