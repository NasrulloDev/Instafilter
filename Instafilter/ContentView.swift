//
//  ContentView.swift
//  Instafilter
//
//  Created by Насрулло Исмоилжонов on 27/02/24.
//

import SwiftUI
import StoreKit


struct ContentView: View {
    
    @State private var processedImage: Image?
    @State private var filterIntensity = 0.5
    
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                
                if let processedImage {
                    processedImage
                        .resizable()
                        .scaledToFit()
                } else {
                    ContentUnavailableView("No picture", systemImage: "photo.badge.plus", description: Text("Tap to import a photo"))
                }
                
                Spacer()
                
                HStack{
                    Text("Intensity")
                    Slider(value: $filterIntensity)
                }
                
                HStack{
                    Button("Change filter", action: changeFilter)
                    
                    Spacer()
                    
                    //share the pic
                }
            }
            .padding([.horizontal, .bottom])
            .navigationTitle("Instafilter")
        }
    }
    
    func changeFilter(){
        
    }
    
}

#Preview {
    ContentView()
}
