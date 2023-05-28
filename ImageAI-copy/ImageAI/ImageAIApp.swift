//
//  ImageAIApp.swift
//  ImageAI
//
//  Created by 김형관 on 2022/06/08.
//
// This App is based on https://github.com/create-with-swift/coreml-with-swiftui/tree/main/CoreMLwithSwiftUI
// Many thanks to to the team of "Create with Swift"!

import SwiftUI

@main
struct ImageAIApp: App {
    
    @StateObject var imageViewModel = ImageViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(imageViewModel)
        }
    }
}
