//
//  News.swift
//  Fabnews
//
//  Created by cybercatzone on 27/09/22.
//

import Foundation
import SwiftUI

struct News: Hashable, Codable{
    var id: Int
    var title: String
    
    private var imageName: String
    var image: Image{
        Image(imageName)
    }
}
