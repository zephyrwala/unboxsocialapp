//
//  BrandsVIew.swift
//  unboxsocialapp
//
//  Created by Red Phoenix on 10/03/21.
//

import SwiftUI

struct BrandsVIew: View {
    @State var brands: [Brand] = [Brand(name: "Starbucks", image: "starbucks"),
                                            Brand(name: "H&M", image: "hnm"),
                                            Brand(name: "KFC", image: "kfc"),
                                            Brand(name: "McDonalds", image: "mcd"),
                                            Brand(name: "Skechers", image: "sketchers"),
                                            Brand(name: "One+", image: "oneplus"),
                                            Brand(name: "KFC", image: "kfc"),
                                            Brand(name: "One+", image: "oneplus"),
                                            Brand(name: "KFC", image: "kfc"),

                                            Brand(name: "H&M", image: "hnm")]

    
   
    
    @State var searchText = ""
    
    var body: some View{
        
            VStack(spacing: 10) {
                
                
                HStack {
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Follow Brands ")
                                .font(.system(size: 30, weight: .bold))
                            
                        }
                        Text("Customise your feed 2/3")
                            .font(.system(size: 15, weight: .light))
                    } .padding(.top)
                    .padding(.horizontal)
                    Spacer()
                }
                HStack {
                    TextField("Search", text: $searchText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                }
                    
                                ScrollView(.vertical) {
                    LazyVGrid(columns: Array(repeating: GridItem(.fixed(230), spacing: -35), count: 2), spacing: 15) {
                        ForEach(0..<brands.count) { index in
                            
//                            { $0.tag.contains("Psychology") }
                            
                                        HStack {
                                                Button(action: {
                                                        brands[index].isSelected = brands[index].isSelected ? false : true
                                                }) {
                                                    ZStack {
                                                        if brands[index].isSelected {
                                                            Color("unbox")
                                                                .frame(width: 177, height: 142, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                                .cornerRadius(10)
                                                                .shadow(color: .gray, radius: 3, x: 0, y: 1)
                                                        }
                                                        else {
                                                            Color.white
                                                                .frame(width: 177, height: 142, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                                .cornerRadius(10)
                                                                .shadow(color: .gray, radius: 3, x: 0, y: 1)
                                                        }
                                                            
                                                        
                                                        VStack(spacing: 10){
                                                                    if brands[index].isSelected {
                                                                        Image(brands[index].image)
                                                                            .resizable()
                                                                            .aspectRatio(contentMode: .fit)
                                                                            .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                                                    .animation(.easeIn)
                                                                    } else {
                                                                        Image(brands[index].image)
                                                                            .resizable()
                                                                            .aspectRatio(contentMode: .fit)
                                                                            .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                                            .grayscale(0.9)
                                                                                    .animation(.easeOut)
                                                                    }
                                                            if brands[index].isSelected {
                                                                Text(brands[index].name)
                                                                    .foregroundColor(.white)
                                                            } else {
                                                                Text(brands[index].name)
                                                                    .foregroundColor(.black)
                                                            }
                                                                   
                                                        }
                                                    }.frame(width: 157, height: 144, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                    
                                                }.buttonStyle(BorderlessButtonStyle())
                                            
                                            
                                        }
                                }
                    }
                                }
                
                
                HStack {
                    Text("Skip")
                        .font(.system(size: 15))
                    Spacer()
                    
                    
                    NavigationLink(destination: TestView()) {
                        Text("Next")
                            .font(.system(size: 15))
                            .foregroundColor(.purple)
                            
                                }.navigationBarBackButtonHidden(true)
                    
                    
                    
                    
                }.padding(.horizontal, 39)
                .padding(.bottom, 20)

            }.navigationBarTitle("Follow Brands", displayMode: .inline)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
           
        
    }
}
struct Brand{
    var id = UUID()
    var name: String
    var image: String
    var isSelected: Bool = false
}



struct BrandsVIew_Previews: PreviewProvider {
    static var previews: some View {
        BrandsVIew()
    }
}
