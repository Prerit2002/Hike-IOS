//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Prerit Rawtani on 25/08/23.
//

import Foundation
import SwiftUI


struct GradientButton: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal,30)
            .background(
                
//                condtional sttement with ternary
                
//                Condtion ? A:b
                configuration.isPressed ?
               
                
//                A:button pressed
                LinearGradient(colors: [.customGrayMedium,.customGrayLight], startPoint: .top, endPoint: .bottom)
        :
//                B:button not pressed
                
                LinearGradient(colors: [.customGrayLight,.customGrayMedium], startPoint: .top, endPoint: .bottom))
            .cornerRadius(40)
    }
}
