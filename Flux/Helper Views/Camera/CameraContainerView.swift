//
//  CameraContainerView.swift
//  Flux
//
//  Created by Pranav Grandhi on 12/30/22.
//

import SwiftUI
import AVFoundation

final class CameraContainerView: NSViewRepresentable {
    typealias NSViewType = CameraView

    let captureSession: AVCaptureSession

    init(captureSession: AVCaptureSession) {
        self.captureSession = captureSession
    }

    func makeNSView(context: Context) -> CameraView {
        return CameraView(captureSession: captureSession)
    }

    func updateNSView(_ nsView: CameraView, context: Context) { }
}
