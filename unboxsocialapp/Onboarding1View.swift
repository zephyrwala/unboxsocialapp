//
//  Onboarding1View.swift
//  unboxsocialapp
//
//  Created by Red Phoenix on 08/03/21.
//

import SwiftUI

struct Onboarding1View: View {
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
                            
                        Text(industry.name)
                    }.frame(width: 187, height: 172, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color("unbox"))
                    .clipShape(RoundedRectangle(cornerRadius: 11))
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
    
    let id = UUID()
    var image: String
    var name: String
    
}

let industries = [

    Industry(image: "lotus", name: "Health & Fitness"),
    Industry(image: "piano", name: "Art"),
    Industry(image: "foot", name: "Sports"),
    Industry(image: "busi", name: "Business"),
    Industry(image: "piano", name: "Art"),
    Industry(image: "foot", name: "Sports"),
    Industry(image: "busi", name: "Business"),
    Industry(image: "foot", name: "Sports")

]
