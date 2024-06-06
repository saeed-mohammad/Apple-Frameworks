//
//  FrameWorkDetailView.swift
//  Apple-Frameworks
//
//  Created by saeed shaikh on 6/5/24.
//

import SwiftUI

struct FrameWorkDetailView: View {
    
    var framework : Framework
    @Binding var isShowingFrameWorkDetail : Bool
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button {
                    isShowingFrameWorkDetail = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            
            
            Spacer()
            
            IconView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                
            } label: {
                AFButton(title: "Learn More")
            }
            Spacer()
            
            
        }
        
    }
}

struct FrameWorkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameWorkDetailView(framework: MockData.sampleFramework, isShowingFrameWorkDetail: .constant(true))
        
    }
}
