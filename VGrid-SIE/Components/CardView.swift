//
//  CardView.swift
//  VGrid-SIE
//
//  Created by Gerardo Valencia Rodríguez on 30/10/23.
//

import SwiftUI

extension String {
    
    func loadImg() -> UIImage {
        
        do {
            guard let url = URL(string: self) else {
                return UIImage()
            }
            
            let data: Data = try Data(contentsOf: url)
            return UIImage(data: data) ?? UIImage()
        } catch {}
        
        return UIImage()
    }
    
}

struct CardView: View {
    
    var icon: String
    var id_iest: Int
    var full_name: String
    var email: String
    var career: String
    var index: Int
    
    @State var isVisible = false
    var image = "https://sie.iest.edu.mx/iestdesk/assets/images/elements/student.png"
    
    func onChangeImage() {
        self.isVisible = !isVisible
    }
    
    var body: some View {
        
        HStack(alignment: .top){
            VStack(){
                Button(action: {
                    onChangeImage()
                }) {
                    Image(uiImage: isVisible ? icon.loadImg() : image.loadImg())
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 60)
                        .cornerRadius(100)
                }
                
                Text(String(id_iest))
                    .font(.system(size: 12))
                    .foregroundColor(Color.white)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
            }
            
            HStack(){
                VStack(alignment: .leading, spacing: 5){
                    Text(full_name)
                        .foregroundColor(Color.white)
                        .font(.system(size: 16))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(.top, 5)
                        .lineLimit(1)
                    
                    Text(email)
                        .foregroundColor(Color.white)
                        .lineLimit(1)
                    
                    Text(career)
                        .foregroundColor(Color.white)
                        .font(.system(size: 14))
                        .fontWeight(.semibold)
                    
                }
            }
            
            Spacer()
            
        }
        .padding()
        .background(
            index % 2 == 0 ?
            Color("ColorBrown2") :
            Color("ColorBrown")
        )
        .cornerRadius(10)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(icon: "https://pbs.twimg.com/media/Et3tiNVWQAARDfi.jpg", id_iest: 20852, full_name: "GERARDO VALENCIA RODRÍGUEZ", email: "gerardo.valencia@iest.edu.mx", career: "ISND (2016)", index: 1)
    }
}
