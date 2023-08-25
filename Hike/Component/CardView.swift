//
//  CardView.swift
//  Hike
//
//  Created by Prerit Rawtani on 25/08/23.
//

import SwiftUI

struct CardView: View {
//    mark properties
    
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingSheet:Bool = false
    
    
    func randomImage(){
        
        repeat{
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
        
        imageNumber = randomNumber
    }
    
    
    var body: some View {
        ZStack {
            CustomBackgroundView()
                
            VStack {
//                mark 1 Header
                
                VStack (alignment: .leading){
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(colors: [Color.customGrayLight,Color.customGrayMedium], startPoint: .top, endPoint: .bottom)
                        )
                        Spacer()
                        
                        Button{
//                            Action :Show a sheet
                            isShowingSheet.toggle()
                            print("The button was pressed")
                            
                        } label: {
                            CustomButtonView()
                        }
                        .sheet(isPresented: $isShowingSheet){
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium,.large])
                        }
                    }
                    
                    
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }
                .padding(.horizontal,30)
                
//                mark 2 main content
                ZStack {
                    CustomCircleView()
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default,value: imageNumber)
                }
//                mark footer
                
                Button{
                    print("the button was pressed")
                    randomImage()
                    
                }label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(colors: [.customGreenLight,.customGreenMedium], startPoint: .top, endPoint: .bottom)
                        )
                        .shadow(color: .black.opacity(0.25) , radius: 0.25,x: 1,y:2)
                }
                .buttonStyle(GradientButton())
//                .buttonStyle(.borderedProminent)
//                .tint(.indigo)
            }
        }
        .frame(width: 320, height: 570)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
