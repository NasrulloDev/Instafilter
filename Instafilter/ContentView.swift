//
//  ContentView.swift
//  Instafilter
//
//  Created by Насрулло Исмоилжонов on 27/02/24.
//
//import CoreImage
//import CoreImage.CIFilterBuiltins
import SwiftUI

struct ContentView: View {
    
//    @State private var image: Image?
    
    var body: some View {
//        ContentUnavailableView("No snippets", systemImage: "swift", description: Text("You don't have any saved snippets yet"))
        ContentUnavailableView{
            Label("No snippets", systemImage: "swift")
        } description: {
            Text("You don't have any saved snippets yet")
        } actions: {
            Button("Create snippet"){}
                .buttonStyle(.borderedProminent)
        }
//        VStack{
//            image?
//                .resizable()
//                .scaledToFit()
//        }
//        .onAppear(perform: loadImage)
    }
    
//    func loadImage(){
//        let inputImage = UIImage(resource: .de4EC4630DD94B9AA12AAD4E927E443B1105C)
//        let beginImage = CIImage(image: inputImage)
//        
//        let context = CIContext()
//        let currentFilter = CIFilter.twirlDistortion()
//        
//        currentFilter.inputImage = beginImage
//        let amount = 1.0
//        let inputKeys = currentFilter.inputKeys
//        
//        if inputKeys.contains(kCIInputIntensityKey){ currentFilter.setValue(amount, forKey: kCIInputIntensityKey) }
//        if inputKeys.contains(kCIInputRadiusKey){ currentFilter.setValue(amount * 200, forKey: kCIInputRadiusKey) }
//        if inputKeys.contains(kCIInputScaleKey){ currentFilter.setValue(amount * 10, forKey: kCIInputScaleKey) }
//        
//        
//        guard let outputImage = currentFilter.outputImage else {return}
//        guard let cgImage = context.createCGImage(outputImage, from: outputImage.extent) else {return}
//        let uiImage = UIImage(cgImage: cgImage)
//        image = Image(uiImage: uiImage)
//    }
}

#Preview {
    ContentView()
}
