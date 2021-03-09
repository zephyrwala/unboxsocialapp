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
    @State var multipleSelection = false
    @State var arra = []
   
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Follow Industries ")
                            .font(.system(size: 30, weight: .bold))
                        
                    }
                    Text("Customise your feed 1/3")
                        .font(.system(size: 15, weight: .light))
                } .padding()
                Spacer()
                   
                
            }
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: -30), count: 2), spacing: 5) {
                ForEach(industries) { industry in
                  

                    ZStack {
                        
                        
                        if isSelected == industry.id{
                            Color(.purple)
                                    .frame(width: 187, height: 172, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        }
                        
                        else {
                            Color(.blue)
                        }
                        
                        
                        
                        
                        VStack {
                                Image(industry.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .grayscale(isSelected == industry.id ? 0.1 : 0.9)
                                    
                                Text(industry.name)
                                    .foregroundColor(show ? .white : .black)
                            }.frame(width: 187, height: 172, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
//                            .background(show ? Color(.purple) : Color(.clear))
                            .animation(.linear(duration: 1))
                            .clipShape(RoundedRectangle(cornerRadius: 11))
                            
                            .onTapGesture {
                               
                              

                                    print(industry.id)
                                    isSelected = industry.id
                                    print("isSelected = \(isSelected)")
                                show.toggle()
                                arra.append(isSelected)
                                print(arra)
                                for i in arra {
                                    if i as! Int == industry.id {
                                        print("match found")
                                        show = true
                                    }
                                    else {
                                        show = false
                                    }
                                }
                                
                              
                               
                                
                                
                        }
                        
                        
                        
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



struct Industry: Codable, Identifiable, Hashable {
    
    let id : Int
    var image: String
    var name: String
    var bgColor: String
    
}

let industries = [

    Industry(id: 1, image: "lotus", name: "Health & Fitness", bgColor: "unbox"),
    Industry(id: 2, image: "piano", name: "Art", bgColor: "unbox"),
    Industry(id: 3, image: "foot", name: "Sports", bgColor: "unbox"),
    Industry(id: 4, image: "busi", name: "Business", bgColor: "unbox"),
    Industry(id: 5, image: "piano", name: "Art", bgColor: "unbox"),
    Industry(id: 6, image: "foot", name: "Sports", bgColor: "unbox"),
    Industry(id: 7, image: "busi", name: "Business", bgColor: "unbox"),
    Industry(id: 8, image: "foot", name: "Sports", bgColor: "unbox")

]
