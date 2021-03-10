
import SwiftUI

struct IngredientsPickerView: View {
        @State var ingredients: [Ingredient] = [Ingredient(name: "Salt", image: "busi"),
                                                                                        Ingredient(name: "Pepper", image: "lotus"),
                                                                                        Ingredient(name: "Chindi", image: "piano"),
                                                                                        Ingredient(name: "hili", image: "foot"),
                                                                                        Ingredient(name: "Bhili", image: "busi"),
                                                                                        Ingredient(name: "Phili", image: "foot"),
                                                                                        Ingredient(name: "Lohili", image: "foot"),
                                                                                        Ingredient(name: "Cohili", image: "busi"),
                                                                                        Ingredient(name: "mphili", image: "lotus"),
                                                                                        Ingredient(name: "Milk", image: "piano")]
        
        var body: some View{
            ScrollView(.vertical) {
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 0), count: 2), spacing: 10) {
                            ForEach(0..<ingredients.count){ index in
                                    HStack {
                                            Button(action: {
                                                    ingredients[index].isSelected = ingredients[index].isSelected ? false : true
                                            }) {
                                                ZStack {
                                                    if ingredients[index].isSelected {
                                                        Color.purple
                                                            .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                            .cornerRadius(10)
                                                    }
                                                    else {
                                                        Color.gray
                                                            .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                            .cornerRadius(10)
                                                    }
                                                        
                                                    
                                                    VStack{
                                                                if ingredients[index].isSelected {
                                                                    Image(ingredients[index].image)
                                                                        .resizable()
                                                                        .aspectRatio(contentMode: .fit)
                                                                        .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                                                .animation(.easeIn)
                                                                } else {
                                                                    Image(ingredients[index].image)
                                                                        .resizable()
                                                                        .aspectRatio(contentMode: .fit)
                                                                        .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                                        .grayscale(0.9)
                                                                                .animation(.easeOut)
                                                                }
                                                                Text(ingredients[index].name)
                                                                    .foregroundColor(.white)
                                                    }
                                                }
                                            }.buttonStyle(BorderlessButtonStyle())
                                    }
                            }
                }
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
