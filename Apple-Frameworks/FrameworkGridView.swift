//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by saeed shaikh on 6/3/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameWorkDetailViewModel()
    
    let column: [GridItem] = [GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())]
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVGrid(columns: column){
                    ForEach(MockData.frameworks) { framework in
                        IconView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                    
                }
            }
            .navigationTitle("Frameworks")
            .sheet(isPresented: $viewModel.isShowingFrameWorkDetail) {
                FrameWorkDetailView(framework: viewModel.selectedFramework!, isShowingFrameWorkDetail: $viewModel.isShowingFrameWorkDetail)
            }
        }
        
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
//            .preferredColorScheme(.dark)
    }
}

struct IconView: View{
    let framework: Framework
    
    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 80, height: 80)
                .aspectRatio(contentMode: .fit)
            Text(framework.name)
                .font(.system(size: 16, weight: .medium, design: .default))
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
        .padding()
    }
}
