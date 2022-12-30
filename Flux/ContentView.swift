//
//  ContentView.swift
//  Flux
//
//  Created by Pranav Grandhi on 12/29/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = CameraViewModel()
    
    init() {
        viewModel.checkAuthorization()
    }
    
    var body: some View {
        CameraContainerView(captureSession: viewModel.captureSession)
    }
}
