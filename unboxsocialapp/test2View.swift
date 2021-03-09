
import SwiftUI

struct IngredientsPickerView: View {
        @State var ingredients: [Ingredient] = [Ingredient(name: "Salt"),
                                                                                        Ingredient(name: "Pepper"),
                                                                                        Ingredient(name: "Chindi"),
                                                                                        Ingredient(name: "hili"),
                                                                                        Ingredient(name: "Bhili"),
                                                                                        Ingredient(name: "Phili"),
                                                                                        Ingredient(name: "Lohili"),
                                                                                        Ingredient(name: "Cohili"),
                                                                                        Ingredient(name: "mphili"),
                                                                                        Ingredient(name: "Milk")]
        
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
                                                        
                                                    
                                                    HStack{
                                                                if ingredients[index].isSelected {
                                                                        Image(systemName: "checkmark.circle.fill")
                                                                                .foregroundColor(.white)
                                                                                .animation(.easeIn)
                                                                } else {
                                                                        Image(systemName: "circle")
                                                                                .foregroundColor(.primary)
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
        var isSelected: Bool = false
}

struct IngredientsPickerView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsPickerView()
    }
}
