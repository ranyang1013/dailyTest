//
//  ViewController.swift
//  DayTestDemo
//
//  Created by fan on 2017/12/29.
//  Copyright © 2017年 YWJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,BMKMapViewDelegate{
     var _mapView: BMKMapView?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        _mapView?.viewWillAppear()
        _mapView?.delegate = self  // 此处记得不用的时候需要置nil，否则影响内存的释放
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        _mapView?.viewWillDisappear()
        _mapView?.delegate = nil // 不用时，置nil
    }
    
    func configUI() {
        //使用地图
        _mapView = BMKMapView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        self.view.addSubview(_mapView!)
        _mapView?.showsUserLocation = true
        _mapView?.userTrackingMode = BMKUserTrackingModeNone
    }
}

