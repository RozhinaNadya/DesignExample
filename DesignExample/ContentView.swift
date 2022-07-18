//
//  ContentView.swift
//  DesignExample
//
//  Created by Надежда on 2022-07-18.
//

import SwiftUI

struct ContentView: View {
    
    @State var index = 0
    
    var body: some View {
        GeometryReader { _ in
            //позволяет сделать view внутри гибким - дочерние views подстраиваются под размер родительского
            VStack {
                Image("nikeLogo")
                    .resizable()
                    .frame(width: 70, height: 25)
                
                ZStack {
                    
                    SingUp(index: self.$index)
                        .zIndex(Double(self.index))
                    Login(index: self.$index)
                }
                
                HStack(spacing: 15) {
                    Rectangle()
                        .fill(Color("ColorOne"))
                        .frame(height: 1) // так получилась полоса
                    
                    Text("OR")
                    
                    Rectangle()
                        .fill(Color("ColorOne"))
                        .frame(height: 1)
                } .padding(.horizontal, 30) //отступ только по бокам
                    .padding(.top, 50)
                
                HStack(spacing: 25) {
                    Button(action: {
                        //
                    }) {
                        Image("facebookLogo")
                            .resizable()
                            .renderingMode(.original) //чтобы не воспринимал, как кнопку, и не окрашивал в синий
                            .frame(width: 50, height: 50)
                    }
                    
                    Button(action: {
                        //
                    }) {
                        Image("appleLogo")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 50, height: 50)
                    }
                    
                    Button(action: {
                        //
                    }) {
                        Image("twitterLogo")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 50, height: 50)
                    }
                } .padding(.top, 30)
            } .padding(.vertical, 100)
        } .background(Color.black).edgesIgnoringSafeArea(.all)
            .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
