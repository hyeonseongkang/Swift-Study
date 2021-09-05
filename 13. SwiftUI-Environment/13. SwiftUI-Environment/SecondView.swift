//
//  SecondView.swift
//  13. SwiftUI-Environment
//
//  Created by 강현성 on 2021/09/05.
//  Copyright © 2021 Mirror. All rights reserved.
//

import Foundation
import SwiftUI

struct SecondView: View {
    
    @EnvironmentObject var timerData: DataFile
    
    var body: some View {
        VStack {
            Text("Second View")
                .font(.largeTitle)
            Text("Timer Count = \(timerData.timeCount)")
                .font(.headline)
        }.padding()
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView().environmentObject(DataFile())
    }
}
