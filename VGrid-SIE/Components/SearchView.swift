//
//  SearchView.swift
//  VGrid-SIE
//
//  Created by Gerardo Valencia Rodríguez on 30/10/23.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var studentName: String
    
    var body: some View {
        HStack(alignment: .center){
            TextField("Buscar Estudiante", text: $studentName)
                .disableAutocorrection(true)
                .foregroundColor(Color.black)
                .padding()
            
            Image(systemName: "magnifyingglass.circle.fill")
                .font(.system(size: 32))
                .foregroundColor(Color("ColorBrown"))
                .padding(.trailing, 7)
        }
        .overlay(RoundedRectangle(cornerRadius: 8)
        .stroke(Color("ColorBrown"), lineWidth: 3))
        .background(Color.white.opacity(0.9))
        .ignoresSafeArea()
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(studentName: .constant(""))
    }
}
