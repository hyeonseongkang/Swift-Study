//
//  MyMapView.swift
//  21. SwiftUI-Map
//
//  Created by 강현성 on 2021/09/17.
//  Copyright © 2021 Mirror. All rights reserved.
//

import Foundation
import MapKit
import SwiftUI
import CoreLocation // 위치

struct MyMapView: UIViewRepresentable {
    
    let locationManager = CLLocationManager()
    
    func makeUIView(context: Context) -> MKMapView {
        print("MyMapView - makeUIView() called")
        
        let mkMapView = MKMapView()
        
        // 맵뷰 델리게이트 연결
        mkMapView.delegate = context.coordinator
        
        // 위치 매니저 델리게이트 연결
        self.locationManager.delegate = context.coordinator
        
        // 위치 정확도 설정
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        // 위치 허용 권한
        self.locationManager.requestWhenInUseAuthorization()
        
        // 현재 위치 업데이트
        self.locationManager.startUpdatingLocation()
        
        mkMapView.showsUserLocation = true // 현재 사용자 위치 보여주기
        mkMapView.setUserTrackingMode(.follow, animated: true) // 따라오는지 여부
        
        let regionRadius : CLLocationDistance = 10 // 맵 카메라 반경
        
        // 보여줄 지역 설정
        let coordinateRegion = MKCoordinateRegion(center: mkMapView.userLocation.coordinate,
                                                  latitudinalMeters: regionRadius,
                                                  longitudinalMeters: regionRadius)
        
        // 지도의 지역 설정
        mkMapView.setRegion(coordinateRegion, animated: true)
        
        return mkMapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        print("MyMapView - updateUIView called")
    }
    
    func makeCoordinator() ->MyMapView.Coordinator {
        return MyMapView.Coordinator(self)
    }
    
    class Coordinator: NSObject {
        var myMapView: MyMapView // SwiftUI View
        
        init(_ myMapView: MyMapView) {
            self.myMapView = myMapView
        }
    }
}

extension MyMapView.Coordinator : MKMapViewDelegate {
    
}

extension MyMapView.Coordinator: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let lat = locations.first?.coordinate.latitude,
            let long = locations.first?.coordinate.longitude else {
                return
        }
        
        print("didUPdateLocations - 위도: \(lat), 경도: \(long)")
    }
}
