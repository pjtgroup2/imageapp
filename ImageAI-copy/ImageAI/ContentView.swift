


//
//  ContentView.swift
//  ImageRecognition
//
//  Created by 김형관 on 2022/05/17.
//


import SwiftUI


struct ContentView: View {
    
    @EnvironmentObject var imageViewModel: ImageViewModel
    
    var body: some View {
        VStack {
            Text("Image Classifier")
                .padding()
            
            Image(imageViewModel.images[imageViewModel.currentIndex])
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Button("Next Image >") {
                
                if imageViewModel.currentIndex < imageViewModel.images.count - 1 {
                    imageViewModel.currentIndex = imageViewModel.currentIndex + 1
                }
                else {
                    imageViewModel.currentIndex = 0
                }
                
            }.padding()
            Button("Classify") {
                imageViewModel.classifyImage()
            }
            
            Text(imageViewModel.classificationLabel)
                .padding()
        }
        .font(.system(size: 20))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}







