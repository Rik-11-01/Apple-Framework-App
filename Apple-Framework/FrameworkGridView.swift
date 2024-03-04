//
//  FrameworkGridView.swift
//  Apple-Framework
//
//  Created by Ritik Raman on 29/02/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewmodel=FrameWorkGridViewModel()
    
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
                            .onTapGesture {
                                viewmodel.selectedframework=frameworks
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewmodel.ishowingdetailview, content: {
                frameworkdetailview(framework: viewmodel.selectedframework ?? MockData.sampleFramework, isshowingdetailview: $viewmodel.ishowingdetailview)
            })
        }

    }
}

#Preview {
    
    FrameworkGridView()
}

