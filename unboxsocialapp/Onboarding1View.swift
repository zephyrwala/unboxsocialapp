//
//  Onboarding1View.swift
//  unboxsocialapp
//
//  Created by Red Phoenix on 08/03/21.
//

import SwiftUI

struct Onboarding1View: View {
    @State var show = false
    @State var isSelected = 0
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Follow Industries")
                        .font(.system(size: 30, weight: .bold))
                    Text("Customise your feed 1/3")
                        .font(.system(size: 15, weight: .light))
                } .padding()
                Spacer()
                   
                
            }
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: -30), count: 2), spacing: 5) {
                ForEach(industries) { industry in
                  

                        VStack {
                            Image(industry.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .grayscale(isSelected == industry.id ? 0.1 : 0.9)
                                
                            Text(industry.name)
                                .foregroundColor(isSelected == industry.id ? .white : .black)
                        }.frame(width: 187, height: 172, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        .background(isSelected == industry.id ? Color("unbox") : Color(.clear))
                        .animation(.linear(duration: 1))
                        .clipShape(RoundedRectangle(cornerRadius: 11))
                        .onTapGesture {
                            show.toggle()
                            isSelected = industry.id
                           print(industry.id)
                        }
                    
                }
            }
            
        }
    }
}

struct Onboarding1View_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding1View()
    }
}

struct Industry: Codable, Identifiable {
    
    let id : Int
    var image: String
    var name: String
    
}

let industries = [

    Industry(id: 1, image: "lotus", name: "Health & Fitness"),
    Industry(id: 2, image: "piano", name: "Art"),
    Industry(id: 3, image: "foot", name: "Sports"),
    Industry(id: 4, image: "busi", name: "Business"),
    Industry(id: 5, image: "piano", name: "Art"),
    Industry(id: 6, image: "foot", name: "Sports"),
    Industry(id: 7, image: "busi", name: "Business"),
    Industry(id: 8, image: "foot", name: "Sports")

]
