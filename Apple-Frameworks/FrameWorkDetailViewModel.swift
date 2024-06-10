//
//  FrameWorkDetailViewModel.swift
//  Apple-Frameworks
//
//  Created by saeed shaikh on 6/6/24.
//

import SwiftUI


final class FrameWorkDetailViewModel: ObservableObject{
    var selectedFramework: Framework?{
        didSet{
            isShowingFrameWorkDetail = true
        }
    }
    @Published var isShowingFrameWorkDetail = false
    
    
}
