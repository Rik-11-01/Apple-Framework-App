//
//  FrameworkGridView.swift
//  Apple-Framework
//
//  Created by Ritik Raman on 29/02/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem]=[GridItem(.flexible()),
                             GridItem(.flexible()),
                             GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns:columns){
            Frameworktitleview(imagename: "arkit", name: "Arkit")
            Frameworktitleview(imagename: "arkit", name: "Arkit")
            Frameworktitleview(imagename: "arkit", name: "Arkit")
            Frameworktitleview(imagename: "arkit", name: "Arkit")
            Frameworktitleview(imagename: "arkit", name: "Arkit")
            Frameworktitleview(imagename: "arkit", name: "Arkit")
        }

    }
}

#Preview {
    
    FrameworkGridView()
}

struct Frameworktitleview: View{
    let imagename:String
    let name:String
    
    var body :some View{
        VStack{
            Image(imagename)
                .resizable()
                .frame(width: 90, height: 90)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
    
}
