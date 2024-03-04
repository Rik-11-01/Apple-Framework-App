//
//  frameworkgridviewmodel.swift
//  Apple-Framework
//
//  Created by Ritik Raman on 03/03/24.
//

import Foundation
import SwiftUI

final class FrameWorkGridViewModel:ObservableObject{
    var selectedframework: Framework?{
        didSet{ ishowingdetailview=true }
    }
    
    
    @Published var ishowingdetailview = false
    
}
