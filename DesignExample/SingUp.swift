//
//  SingUp.swift
//  DesignExample
//
//  Created by Надежда on 2022-07-18.
//

import SwiftUI

struct SingUp: View {
    
    @State var email = ""
    @State var pass = ""
    @State var repass = ""
    @Binding var index: Int
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                HStack {
                    Spacer(minLength: 0)
                    VStack(spacing: 10) {
                        Text("SingUp")
                            .foregroundColor(self.index == 1 ? .white : .gray)
                            .font(.title)
                            .fontWeight(.bold)
                        Capsule()
                            .fill(self.index == 1 ? Color.blue : Color.clear)
                            .frame(width: 100, height: 5)
                    }
                }
            .padding(.top, 30)
                
                VStack {
                    HStack(spacing: 15) {
                        Image(systemName: "envelope.fill")
                            .foregroundColor(Color("AccentColor"))
                        TextField("Email Address", text: self.$email)
                    }
                    Divider()
                        .background(Color.white.opacity(0.5))
                } .padding(.horizontal)
                    .padding(.top, 40)
            
            VStack {
                HStack(spacing: 15) {
                    Image(systemName: "eye.slash.fill")
                        .foregroundColor(Color("AccentColor"))
                    SecureField("Password", text: self.$pass)
                }
                Divider()
                    .background(Color.white.opacity(0.5))
            } .padding(.horizontal)
                .padding(.top, 30)
            
            VStack {
                HStack(spacing: 15) {
                    Image(systemName: "eye.slash.fill")
                        .foregroundColor(Color("AccentColor"))
                    SecureField("Password", text: self.$repass)
                }
                Divider().background(Color.white.opacity(0.5))
            } .padding(.horizontal)
                .padding(.top, 30)
            }
            .padding()
            .padding(.bottom, 65)
            .background(Color("ColorOne")) //2
            .clipShape(CShapeRight())
            .contentShape(CShapeRight())
            .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: -5)
            .onTapGesture {
                self.index = 1
            }
            .cornerRadius(35)
            
            Button(action: {
                //
            }) {
                Text("SIGNUP")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .padding(.horizontal, 50)
                    .background(Capsule())
                    .shadow(color: .white.opacity(0.1), radius: 5, x: 0, y: -5)
            }
            .offset(y: 25)
            .opacity(self.index == 1 ? 1 : 0)
        }
    }
}


