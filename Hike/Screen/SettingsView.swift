//
//  ScreenView.swift
//  Hike
//
//  Created by Prerit Rawtani on 25/08/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List{
//            mark section header
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size:80,weight:.black))
                    VStack(spacing :-10) {
                        Text("Hike")
                            .font(.system(size:66,weight:.black))
                        
                        Text("Editors Choice")
                            .fontWeight(.medium)
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size:80,weight:.black))
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(colors: [.customGreenLight,.customGreenMedium], startPoint: .top, endPoint: .bottom))
                .padding(.top,8)
                
                
                VStack(spacing:8) {
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                    .fontWeight(.heavy)
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there.The hike that you hope to do again someday. \nFind the best day hikes in the app")
                        .font(.footnote)
                        .italic()
                    Text("Dust of the boots ! Its time for a walk")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom,16)
                .frame(maxWidth: .infinity)
                
                
                
                
            }
            .listRowSeparator(.hidden)
            
            
            Section(
                header:Text("About the App"),
                footer:HStack {
                    Spacer()
                    Text("Copyright @ All Rights Reserved")
                    Spacer()
                }
                    .padding(.vertical,8)
            ) {
//                1,Basic labeled COntent
                LabeledContent("Application",value:"Hike")
                
//                2 Advanced Labeled content
                CustomListRowView(rowLabel: "Application", rowIcon: "app.iphone", rowContent: "HIKE", rowTintColor: .blue)
                CustomListRowView(rowLabel: "Compatibility", rowIcon: "info.circle", rowContent: "IOS,IPADOS", rowTintColor: .red)

                
                CustomListRowView(rowLabel: "Technology", rowIcon: "swfit", rowContent: "Swift", rowTintColor: .orange)
                
                CustomListRowView(rowLabel: "Version", rowIcon: "geat", rowContent: "1.0", rowTintColor: .purple)
                
                CustomListRowView(rowLabel: "Developer", rowIcon: "ellpipsis.curlybraces", rowContent: "Prerit Rawtani", rowTintColor: .mint)
                
                CustomListRowView(rowLabel: "Website", rowIcon: "globe", rowTintColor: .indigo, rowLinkLabel:"google", rowLinkDestination: "https://google.com" )
                

                            }
            
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
