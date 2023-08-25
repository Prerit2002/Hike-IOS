//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Prerit Rawtani on 25/08/23.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        

        
        
        
//        Mark:2 Light
        
//        Mark:1 Surface
        ZStack {
            //        Mark:3 Depth
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y:12)
            
            //        Mark:2 Light
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y:3)
                    
            //        Mark:1 Surface
            
            
            LinearGradient(colors:
                            [Color.customGreenLight,Color.customGreenMedium], startPoint: .top, endPoint: .bottom)
            .cornerRadius(40)
        }
    }
}

struct CustomBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBackgroundView()
            .padding()
    }
}
