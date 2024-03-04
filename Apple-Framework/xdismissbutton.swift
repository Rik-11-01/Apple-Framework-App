//
//  xdismissbutton.swift
//  Apple-Framework
//
//  Created by Ritik Raman on 09/03/24.
//

import SwiftUI

struct xdismissbutton: View {
    @Binding var isshowingdetailview :Bool
    var body: some View {
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

    }
}

#Preview {
    xdismissbutton(isshowingdetailview: .constant(false))
}
