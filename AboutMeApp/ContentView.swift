//
//  ContentView.swift
//  AboutMeApp
//
//  Created by Krishi Dalal on 2023-07-13.
//

import SwiftUI

struct ContentView: View {
    
    @State private var funFact = false
    
    var body: some View {
        ZStack {
            Color(.systemPurple)
                .ignoresSafeArea()
            ScrollView {
                VStack (alignment: .center, spacing : 15)  {
                        Text("Hello, my name is Krishi!")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .bold()
                        Image("image")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding()
                            .cornerRadius(80)
                        Button("Fun Fact") {
                            funFact.toggle()
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.green)
                   
                    Spacer()
                
                    if funFact {
                        Text("I enjoy attending wedding events with my family! I also love Shawn Mendes and the Toronto Raptors:)")
                    } else {
                    }
                        Image("shawn")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200.0, height: 200.0)
                        Image("raptors")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.horizontal)
                }
                .padding(.top, 20.0)
                }
            }
            }
      
        
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
