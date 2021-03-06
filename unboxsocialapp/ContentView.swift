//
//  ContentView.swift
//  unboxsocialapp
//
//  Created by Red Phoenix on 05/03/21.
//

import SwiftUI

struct ContentView: View {
    @State var showLogin = false
    var body: some View {
        
        NavigationView {
            VStack {
                HStack {
                    Text("Welcome to Unbox Social")
                        .font(.system(size: 30, weight: .bold))
                        .frame(width: 188, height: 74, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding()
                    Spacer()
                }
              
                Image("main")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                
                Button(action: {
                    showLogin.toggle()
                }, label: {
                    Text("Continue with email")
                        .font(.system(size: 17))
                        .foregroundColor(.white)
                }).frame(width: 352, height: 63, alignment: .center)
                .background(Color(#colorLiteral(red: 0.3294117647, green: 0.1215686275, blue: 0.7333333333, alpha: 1)))
                .cornerRadius(11)
                
                .fullScreenCover(isPresented: $showLogin, content: {
                    LoginView()
                })
                
                HStack {
                    Text("Don’t have an account ?")
                        .font(.system(size: 15, weight: .light))
                    
                    Text("Sign up.")
                        .font(.system(size: 15, weight: .light))
                        .foregroundColor(Color(#colorLiteral(red: 0.3277525008, green: 0.1195535883, blue: 0.7343643308, alpha: 1)))
                }.padding(.top, 3)
                
                Spacer()
            }.navigationBarTitle("", displayMode: .inline)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
