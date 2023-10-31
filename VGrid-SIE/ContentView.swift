//
//  ContentView.swift
//  VGrid-SIE
//
//  Created by Gerardo Valencia Rodríguez on 30/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var orientation = UIDeviceOrientation.unknown
    @State var studentName: String = ""
    
    let studentsView = StudentsView().dummyData()
    
    let icon = "https://pbs.twimg.com/media/Et3tiNVWQAARDfi.jpg"
    
    func setColumns() -> [GridItem] {
        
        if(orientation.isPortrait || orientation.rawValue == 0) {
            return [GridItem(.flexible())]
        }
        
        return [
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
        
    }
    
    func onSearch() -> [Student]{
        
        if (!studentName.isEmpty) {
            return studentsView.filter {
                $0.full_name.lowercased().contains(studentName.lowercased())
            }
        }
        
        return studentsView
        
    }
    
    var body: some View {
        VStack {
            
            SearchView(studentName: $studentName).padding(.bottom, 10)
            
            ScrollView(){
                GeometryReader() { geometry in
                    LazyVGrid(columns: setColumns(), spacing: 10) {
                        
                        ForEach(
                            Array(onSearch().enumerated()),
                            id: \.offset
                        ) { index, student in
                            CardView(
                                icon: icon,
                                id_iest: student.id_iest,
                                full_name: student.full_name,
                                email: student.email,
                                career: student.career,
                                index: (index + 1)
                            )
                        }
                        
                    }
                }
            }
            
        }
        .onRotateDevice{
            newDeviceRotation in orientation = newDeviceRotation
        }
        .padding(.horizontal, 10)
        .padding(.top, 1)
        .background(Color.orange.opacity(0.8))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
