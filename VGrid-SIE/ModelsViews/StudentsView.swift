//
//  StudentsView.swift
//  VGrid-SIE
//
//  Created by Gerardo Valencia Rodríguez on 30/10/23.
//

import Foundation

struct StudentsView {

        func dummyData() -> [Student] {
            
            let students: [Student] = [
                Student(id_iest: 20852, full_name: "GERARDO VALENCIA RODRÍGUEZ", email: "gerardo.valencia@iest.edu.mx", career: "ISND (2016)"),
                Student(id_iest: 21133, full_name: "HECTOR JESUS GONZALEZ HARO", email: "hector.gonzalez@iest.edu.mx", career: "ISND (2016)"),
                Student(id_iest: 21253, full_name: "AURELIO MARIN BAUTISTA", email: "aurelio.marin@iest.edu.mx", career: "ISND (2016)"),
                Student(id_iest: 21688, full_name: "MARIO ISAÍAS HERNÁNDEZ JIMÉNEZ", email: "mario.hernandez05@iest.edu.mx", career: "ISND (2016)"),
            ]
            
            return students
        
    }
}
