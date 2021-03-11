
import SwiftUI

struct IngredientsPickerView: View {
        @State var ingredients: [Ingredient] = [Ingredient(name: "Business", image: "busi"),
                                                Ingredient(name: "Health", image: "lotus"),
                                                Ingredient(name: "Art", image: "piano"),
                                                Ingredient(name: "Sports", image: "foot"),
                                                Ingredient(name: "Finance", image: "busi"),
                                                Ingredient(name: "Football", image: "foot"),
                                                Ingredient(name: "Soccer", image: "foot"),
//                                                Ingredient(name: "Business", image: "busi"),
//                                                Ingredient(name: "Fitness", image: "lotus"),
                                                Ingredient(name: "Music", image: "piano")]
        
        var body: some View{
            NavigationView {
                VStack(spacing: 10) {
                    
                    
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
                    
                                    ScrollView(.vertical) {
                        LazyVGrid(columns: Array(repeating: GridItem(.fixed(230), spacing: -35), count: 2), spacing: 17) {
                                    ForEach(0..<ingredients.count){ index in
                                            HStack {
                                                    Button(action: {
                                                            ingredients[index].isSelected = ingredients[index].isSelected ? false : true
                                                    }) {
                                                        ZStack {
                                                            if ingredients[index].isSelected {
                                                                Color("unbox")
                                                                    .frame(width: 177, height: 142, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                                    .cornerRadius(10)
                                                                    .shadow(color: .purple, radius: 6, x: 0, y: 3)
                                                            }
                                                            else {
                                                                Color.white
                                                                    .frame(width: 177, height: 142, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                                    .cornerRadius(10)
                                                                    .shadow(color: .gray, radius: 3, x: 0, y: 1)
                                                            }
                                                                
                                                            
                                                            VStack(spacing: 10){
                                                                        if ingredients[index].isSelected {
                                                                            Image(ingredients[index].image)
                                                                                .resizable()
                                                                                .aspectRatio(contentMode: .fit)
                                                                                .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                                                        .animation(.easeIn)
                                                                        } else {
                                                                            Image(ingredients[index].image)
                                                                                .resizable()
                                                                                .aspectRatio(contentMode: .fit)
                                                                                .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                                                .grayscale(0.9)
                                                                                        .animation(.easeOut)
                                                                        }
                                                                if ingredients[index].isSelected {
                                                                    Text(ingredients[index].name)
                                                                        .foregroundColor(.white)
                                                                } else {
                                                                    Text(ingredients[index].name)
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
                        
                        
                        NavigationLink(destination: BrandsVIew()) {
                            Text("Next")
                                .font(.system(size: 15))
                                .foregroundColor(.purple)
                                
                                    }
                        
                        
                        
                        
                    }.padding(.horizontal, 39)
                    .padding(.bottom, 20)

                }
                .navigationBarTitle("", displayMode: .inline)
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
            }
        }
}
struct Ingredient{
        var id = UUID()
        var name: String
        var image: String
        var isSelected: Bool = false
}

struct IngredientsPickerView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsPickerView()
    }
}
