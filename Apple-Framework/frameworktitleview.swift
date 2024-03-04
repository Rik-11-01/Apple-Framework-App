//
//  frameworktitleview.swift
//  Apple-Framework
//
//  Created by Ritik Raman on 09/03/24.
//

import SwiftUI


struct Frameworktitleview: View{
    let framework:Framework
    
    var body :some View{
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
    
}

#Preview {
    Frameworktitleview(framework: MockData.sampleFramework)
}
