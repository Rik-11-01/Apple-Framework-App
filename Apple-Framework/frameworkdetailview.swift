//
//  frameworkdetailview.swift
//  Apple-Framework
//
//  Created by Ritik Raman on 02/03/24.
//

import SwiftUI

struct frameworkdetailview: View {
    var framework:Framework
    @Binding var isshowingdetailview:Bool
    
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
            
            xdismissbutton(isshowingdetailview: $isshowingdetailview)
            
            Spacer()
            Frameworktitleview(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button{
                isShowingSafariView = true
            }label: {
                Text("Learn More")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width:280,height:50)
                    .background(Color.red)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
            }
        }
        .fullScreenCover(isPresented:$isShowingSafariView , content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string:"www.apple.com")!)
        })
    }
}

#Preview {
    frameworkdetailview(framework: MockData.sampleFramework, isshowingdetailview: .constant(false))
}
