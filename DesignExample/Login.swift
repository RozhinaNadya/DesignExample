//
//  Login.swift
//  DesignExample
//
//  Created by Надежда on 2022-07-18.
//

import SwiftUI

struct Login: View {
    @State var email = ""
    @State var pass = ""
    @Binding var index: Int
    
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                HStack {
                    VStack(spacing: 10) {
                        Text("Login")
                            .foregroundColor(self.index == 0 ? .white : .gray)
                            .font(.title)
                            .fontWeight(.bold)
                        Capsule()
                            .fill(self.index == 0 ? Color.blue : Color.clear)
                            .frame(width: 10, height: 5)
                    }
                    Spacer()
                }.padding(.top, 30)
                
                VStack {
                    HStack(spacing: 15) {
                        Image(systemName: "envelop.fill")
                            .foregroundColor(Color("ColorOne"))
                        TextField("Email Address", text: self.$email)
                    }
                    Divider()
                        .background(Color.white.opacity(0.5)) //цвет и прозрачность
                } .padding(.horizontal)
                    .padding(.top, 40)
                
                VStack {
                    HStack(spacing: 15) {
                        Image(systemName: "eye.slash.fill")
                            .foregroundColor(Color("ColorOne"))
                        SecureField("Password", text: self.$pass)
                    }
                    Divider()
                        .background(Color.white.opacity(0.5)) //цвет и прозрачность
                } .padding(.horizontal)
                    .padding(.top, 30)
                
                HStack {
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        //
                    }) {
                        Text("Forget password?")
                            .foregroundColor(Color.white.opacity(0.6))
                    }
                } .padding(.horizontal)
                    .padding(.top, 30)
            } .padding()
                .padding(.bottom, 65)
                .background(Color("ColorOne")) //2
                .clipShape(CShapeLeft())
                .contentShape(CShapeLeft())
                .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: -5)
                .onTapGesture {
                    self.index = 0
                }
                .cornerRadius(35)
                .padding(20)
            
            Button(action: {
                //
            }) {
                Text("LOGIN")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .padding(.horizontal, 50)
                    .background(Capsule())
                    .shadow(color: .white.opacity(0.1), radius: 5, x: 0, y: 5)
            }
            .offset(y: 35)
            .opacity(self.index == 0 ? 1 : 0)
        }
    }
}

