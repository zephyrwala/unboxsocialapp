//
//  TestView.swift
//  unboxsocialapp
//
//  Created by Red Phoenix on 08/03/21.
//

import SwiftUI


struct TestView: View {
    @State var selectedItem = 0
    var body: some View {
        ScrollView {
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 2)) {
                ForEach((0...100), id: \.self) { item in
                    Rectangle()
                        .fill(item == selectedItem ? Color.blue : Color.gray)
                        .aspectRatio(1.0, contentMode: .fit)
                        .onTapGesture {
                            selectedItem = item
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
