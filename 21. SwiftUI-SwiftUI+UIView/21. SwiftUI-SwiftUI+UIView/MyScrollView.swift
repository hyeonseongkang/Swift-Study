//
//  MyScrollView.swift
//  21. SwiftUI-SwiftUI+UIView
//
//  Created by 강현성 on 2021/09/16.
//  Copyright © 2021 Mirror. All rights reserved.
//

import SwiftUI

struct MyScrollView: UIViewRepresentable {
    var text: String
    
    func makeUIView(context: UIViewRepresentableContext<MyScrollView>) -> UIScrollView {
        let scrollView = UIScrollView()
        scrollView.delegate = context.coordinator
        scrollView.refreshControl = UIRefreshControl()
        let myLabel = UILabel(frame:
            CGRect(x: 0, y: 0, width: 300, height: 50))
        myLabel.text = text
        scrollView.addSubview(myLabel)
        
        scrollView.refreshControl?.addTarget(context.coordinator,
                                             action: #selector(Coordinator.handleRefresh),
                                             for: .valueChanged)
        return scrollView
    }
    
    func updateUIView(_ uiView: UIScrollView, context: UIViewRepresentableContext<MyScrollView>) {
        
    }
    
    class Coordinator: NSObject, UIScrollViewDelegate {
        var control: MyScrollView
        
        init(_ control: MyScrollView) {
            self.control = control
        }
        
        func scrollViewDidScroll(_ scrollView: UIScrollView) {
            print("View is Scrolling")
        }
        
        @objc func handleRefresh(sender: UIRefreshControl) {
            sender.endRefreshing()
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    
    
}

struct MyScrollView_Previews: PreviewProvider {
    static var previews: some View {
        MyScrollView(text: "Hello WOrld!!")
    }
}
