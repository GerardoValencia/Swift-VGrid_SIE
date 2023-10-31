//
//  Student.swift
//  VGrid-SIE
//
//  Created by Gerardo Valencia Rodríguez on 30/10/23.
//

import Foundation

class Student: Identifiable {
    
    var id = UUID()
    var id_iest : Int
    var full_name : String
    var email : String
    var career : String
    
    init(id: UUID = UUID(), id_iest: Int, full_name: String, email: String, career: String) {
        self.id = id
        self.id_iest = id_iest
        self.full_name = full_name
        self.email = email
        self.career = career
    }
    
}
