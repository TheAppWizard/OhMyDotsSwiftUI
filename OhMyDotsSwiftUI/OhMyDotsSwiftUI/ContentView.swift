//
//  ContentView.swift
//  OhMyDotsSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 10/02/21.
//  The App Wizard
//  Instagram : theappwizard2408

import SwiftUI

private let gradient = RadialGradient(gradient: Gradient(colors: [.orange, .pink]), center: .center, startRadius: 10, endRadius: 50)

private let gradient2 = RadialGradient(gradient: Gradient(colors: [Color("Cyan"), Color("Background")]), center: .center, startRadius: 10, endRadius: 50)

struct ContentView: View {
    var body: some View {
        ZStack{
            Color("Background").edgesIgnoringSafeArea(.all)
            FinalView()
           }
        }
    }




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





















struct FinalView: View {
    var body: some View {
        ZStack{
            Color("Background").edgesIgnoringSafeArea(.all)
            
                HandleOrange()
                HandleCyan()
            
            VStack{
                Spacer()
                Text("TheAppWizard")
                    .fontWeight(.thin)
                    .foregroundColor(Color.white)
            }
            
        }
    }
}


struct HandleCyan: View {
    @State var moveupdown = false
    var body: some View {
        ZStack{
            VStack{
                CyanBall()
                    .offset(y: moveupdown ? 300 : -300)
                    .animation(Animation.easeInOut(duration: 2).delay(0.4).repeatForever())
                                    .onAppear(){
                                        self.moveupdown.toggle()
                                    }
            }.padding(.all)
        }
    }
}

struct HandleOrange: View {
    
    @State var ball1 = false
    @State var ball2 = false
    @State var ball3 = false
    @State var ball4 = false
    @State var ball5 = false
    
    var body: some View {
        ZStack{
            Color("Background").edgesIgnoringSafeArea(.all)
            VStack{
                //Ball1
                OrangeBall()
                    .offset(x: ball1 ? 100 : -100)
                    .animation(Animation.easeInOut(duration: 1).delay(1.5).repeatForever())
                                    .onAppear(){
                                        self.ball1.toggle()
                                    }
                Spacer().frame(height: 30, alignment: .center)
                    
                
                //Ball2
                OrangeBall()
                    .offset(x: ball2 ? -100 : 100)
                    .animation(Animation.easeInOut(duration: 1).delay(1.5).repeatForever())
                                    .onAppear(){
                                        self.ball2.toggle()
                                    }
                Spacer().frame( height: 30, alignment: .center)
                
                
                //Ball3
                OrangeBall()
                    .offset(x: ball3 ? 100 : -100)
                    .animation(Animation.easeInOut(duration: 1).delay(1.5).repeatForever())
                                    .onAppear(){
                                        self.ball3.toggle()
                                    }
                Spacer().frame( height: 30, alignment: .center)
                
                //Ball4
                OrangeBall()
                    .offset(x: ball4 ? -100 : 100)
                    .animation(Animation.easeInOut(duration: 1).delay(1.5).repeatForever())
                                    .onAppear(){
                                        self.ball4.toggle()
                                    }
                Spacer().frame( height: 30, alignment: .center)
                
                //Ball5
                OrangeBall()
                    .offset(x: ball5 ? 100 : -100)
                    .animation(Animation.easeInOut(duration: 1).delay(1.5).repeatForever())
                                    .onAppear(){
                                        self.ball5.toggle()
                                    }
                
                Spacer().frame( height: 30, alignment: .center)
            }.padding(.all)
        }
    }
}

//Orange Grad Ball
struct OrangeBall: View {
    var body: some View {
        
        Circle()
             .fill(gradient)
            .shadow(color: .black, radius: 5, x: 0.0, y: 0.0)
            .frame(width: 50, height: 50, alignment: .center)
           
    }
}


//Orange Cyan Ball
struct CyanBall: View {
    var body: some View {
        
        Circle()
             .fill(gradient2)
            .shadow(color: .black, radius: 5, x: 0.0, y: 0.0)
            .frame(width: 70, height: 70, alignment: .center)
           
        
    }
}
