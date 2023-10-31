//
//  CustomModifierDeviceRotation.swift
//  VGrid-SIE
//
//  Created by Gerardo Valencia Rodríguez on 30/10/23.
//

import Foundation
import SwiftUI

struct CustomModifierDeviceRotation: ViewModifier {
    let action: (UIDeviceOrientation) -> Void
    
    func body(content: Content) -> some View {
        content
            .onAppear()
            .onReceive(
                NotificationCenter.default.publisher(
                    for: UIDevice.orientationDidChangeNotification
                )
            ){ _ in action(UIDevice.current.orientation) }
    }
}

extension View {
    func onRotateDevice(perform action: @escaping (UIDeviceOrientation) -> Void) -> some View {
        self.modifier(CustomModifierDeviceRotation(action: action))
    }
}
