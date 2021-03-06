//
//  LoginView.swift
//  unboxsocialapp
//
//  Created by Red Phoenix on 06/03/21.
//

import SwiftUI

struct LoginView: View {
    
    @State var emailid: String = ""
    
    
    var body: some View {
        VStack {
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Welcome Back!")
                        .font(.system(size: 30, weight: .bold))
                        
                    Text("Please log in to your account")
                        .font(.system(size: 15, weight: .light))
                        .padding(.vertical, 1)
                }.padding(.top, 20)
                .padding(.horizontal, 30)
                Spacer()
            }
            
            TextField("Please enter your email ID", text: $emailid)
                .accentColor(Color.green)
                .padding(.vertical, 25)
                .padding(.horizontal)
                .font(Font.system(size: 15, weight: .light))
                
                .background(RoundedRectangle(cornerRadius: 6).stroke(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),lineWidth: 1))
                                          .padding(.top, 25)
                .frame(width: 352, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            TextField("Enter Password", text: $emailid)
                .padding(.vertical, 25)
                .padding(.horizontal)
                
                .background(RoundedRectangle(cornerRadius: 6).stroke(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),lineWidth: 1))
                                          .padding(.top, 25)
                .frame(width: 352, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            
            HStack {
                Text("Forgot Password?")
                    .font(.system(size: 15))
                    .foregroundColor(Color("unbox"))
                    
                Spacer()
            }.frame(width: 320, height: 40, alignment: .leading)
           
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Next")
                    .font(.system(size: 18))
                    .frame(width: 196, height: 66, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color("unbox"))
                    .foregroundColor(.white)
                    .cornerRadius(11)
                    .padding()
                
                
                   
            })
            
            Spacer()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
