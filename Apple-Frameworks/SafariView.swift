//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by saeed shaikh on 6/9/24.
//

import SwiftUI
import WebKit

struct SafariView : UIViewRepresentable{

    let url: URL

    func makeUIView(context: Context) -> WKWebView {
            return WKWebView()
        }

        func updateUIView(_ uiView: WKWebView, context: Context) {
            let request = URLRequest(url: url)
            uiView.load(request)
        }

    
}
