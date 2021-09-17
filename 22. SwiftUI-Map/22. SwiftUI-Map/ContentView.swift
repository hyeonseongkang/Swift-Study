//
//  ContentView.swift
//  21. SwiftUI-Map
//
//  Created by 강현성 on 2021/09/17.
//  Copyright © 2021 Mirror. All rights reserved.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State var myPosition = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: CLLocationDegrees(37.331705), longitude: CLLocationDegrees(-122.0303237)), span: MKCoordinateSpan())
    
    var body: some View {
        MyMapView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
