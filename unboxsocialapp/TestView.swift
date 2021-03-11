//
//  TestView.swift
//  unboxsocialapp
//
//  Created by Red Phoenix on 08/03/21.
//

import SwiftUI


struct TestView: View {
    @State var search = ""
    @State var selectedItem = 0
   
    var body: some View {
        
        ScrollView {
            
//            filter {
//                self.searchText.isEmpty ? true : $0.contains(self.searchText)
//            }
            TextField("Search here", text: $search)
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 2)) {
                ForEach(cars.filter{
                    search.isEmpty ? true : $0.name.contains(self.search)
                }, id: \.self) { car in
                    ZStack {
                        
                        Rectangle()
                            .fill(Color.blue)
                            .aspectRatio(1.0, contentMode: .fit)
                            
                            
                        VStack {
                            Image(car.image)
                                .resizable()
                                .aspectRatio(1.0, contentMode: .fit)
                                .frame(width: 80)
                            Text(car.name)
                                
                                .onTapGesture {
    //                                selectedItem = car
                            }
                        }
                    }
                }
            }
        }
    }
}
struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}


struct Car: Identifiable, Hashable {
    var id = UUID()
    var name:String
    var image: String
   
}
let cars = [
    Car(name: "Subaru WRX", image: "mcd"),
    Car(name: "Tesla Model 3", image: "starbucks"),
    Car(name: "Porsche 911", image: "hnm"),
    Car(name: "Tesla Model 3", image: "starbucks"),
    Car(name: "Maruti", image: "hnm"),
    Car(name: "Tata", image: "oneplus")
    
    


]
