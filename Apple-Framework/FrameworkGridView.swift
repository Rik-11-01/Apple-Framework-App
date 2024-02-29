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
                             GridItem(.flexible()),
    ]
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns:columns){
                    ForEach(MockData.frameworks){ frameworks in
                        Frameworktitleview(framework: frameworks)
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
        }

    }
}

#Preview {
    
    FrameworkGridView()
}

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
