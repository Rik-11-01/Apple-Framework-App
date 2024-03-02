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
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button {
                    isshowingdetailview=false

                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
                .padding()
            }

            Spacer()
            Frameworktitleview(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button{
                
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
    }
}

#Preview {
    frameworkdetailview(framework: MockData.sampleFramework, isshowingdetailview: .constant(false))
}
