//
//  ContentView.swift
//  Business Card Challenge
//
//  Created by MSOL on 30/09/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            HStack (alignment: .center, spacing: 20) {
                VStack {
                    Image("Muhamed")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .background(Color.accentColor.opacity(0.2))
                        .cornerRadius(15)
                    
                    Text("Muhamed\nAlkhatib")
                        .foregroundColor(Color.accentColor)
                        .font(.headline)
                        .multilineTextAlignment(.center)
                        .layoutPriority(1)
                } //: VStack
                .padding(.leading, 10)
                
                Divider()
                    .padding(.vertical)
                    .padding(.horizontal, 1)
                
                VStack(alignment: .leading, spacing: 13){
                    HeadlineView(headlineImage: "person.circle",headlineTitle: "Muhamed Alkhatib")
                    HeadlineView(headlineImage: "envelope.fill",headlineTitle:  "kajocode@gmail.com")
                    HeadlineView(headlineImage: "phone.circle.fill",headlineTitle:  "+1893399288333")
                    HeadlineView(headlineImage: "house.fill",headlineTitle: "3223, Jordan")
                }//: VStack
            } //: HStack
            .background(Color("ColorBackground"))
            .cornerRadius(8)
        }//: ZStak
        .frame(width: 375, height: 200)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
