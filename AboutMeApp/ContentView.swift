//
//  ContentView.swift
//  AboutMeApp
//
//  Created by Krishi Dalal on 2023-07-13.
//

import SwiftUI

struct ContentView: View {
    
    @State private var funFact = ""
    
    var body: some View {
        ZStack {
            Color(.systemPurple)
                .ignoresSafeArea()
            
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
                Text(funFact)
                Button("Fun Fact") { funFact = "I enjoy attending wedding events with my family! I also love Shawn Mendes and the Toronto Raptors:)"
                }
                .buttonStyle(.borderedProminent)
                .tint(.green)
           
            Spacer()
        
            HStack (spacing: -25) {
                Image("shawn")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding()
                Image("raptors")
                    .resizable(resizingMode:.stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding()
            }
        }
        .padding(.top, 20.0)
        }
    }
        
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
