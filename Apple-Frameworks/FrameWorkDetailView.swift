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
    @State private var isShowingWebView = false
    @State private var url: URL?
    
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
                if let frameworkURL = URL(string: framework.urlString) {
                    self.url = frameworkURL
                    self.isShowingWebView = true
                }
            } label: {
                AFButton(title: "Learn More")
            }
            .fullScreenCover(isPresented: $isShowingWebView) {
                if let url = url {
                    SafariView(url: url)
                }
            }
//            Link(destination: URL(string: framework.urlString)!) {
//                AFButton(title: "Learn More")
//            }
            Spacer()
            
            
        }
        
    }
}

struct FrameWorkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameWorkDetailView(framework: MockData.sampleFramework, isShowingFrameWorkDetail: .constant(true))
        
    }
}
