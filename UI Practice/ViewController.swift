//
//  ViewController.swift
//  UI Practice
//
//  Created by Wei-Tsung Cheng on 2017/7/28.
//  Copyright © 2017年 Wei-Tsung Cheng. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

let numberArray = ["111", "222", "333", "444", "555"]


    func segmentChange(sender: UISegmentedControl)
    {
        switch sender.selectedSegmentIndex {

        case 0 :
            print("0000 ")
        case 1 :
            print("1111 ")
        case 2 :
            print("2222 ")
        case 3 :
            print("3333 ")
        case 4 :
            print("4444 ")
        case 5 :
            print("5555 ")
        case 6 :
            print("6666 ")
        default:
            print("default ")
        }
    }







    override func viewDidLoad() {
        super.viewDidLoad()

        let segmentedControl = UISegmentedControl(items: numberArray)

        segmentedControl.frame = CGRect(x: 10, y: 50, width: 340, height: 40)

        self.view.addSubview(segmentedControl)

        segmentedControl.selectedSegmentIndex = 2
        let index = segmentedControl.selectedSegmentIndex


        print(index)


        segmentedControl.setTitle("Dog", forSegmentAt: 0)
        segmentedControl.setImage(UIImage(named: "birds_PNG109"), forSegmentAt: 1)
        segmentedControl.insertSegment(withTitle: "Cat", at: 2, animated: true)
        segmentedControl.insertSegment(with: UIImage(named: "icon-store"), at: 3, animated: true)
        segmentedControl.insertSegment(with: UIImage(named: "cat_PNG1631"), at: 4, animated: true)

        let count = segmentedControl.numberOfSegments
        print(count)
        let title = segmentedControl.titleForSegment(at: 0)
        print(title!)
        let image = segmentedControl.imageForSegment(at: 1)

        segmentedControl.isMomentary = true


        print(index)




        segmentedControl.setWidth(15, forSegmentAt: 4)

        let width = segmentedControl.widthForSegment(at: 4)

        //改變內容的位置
        segmentedControl.setContentOffset(CGSize(width: 10, height: 10), forSegmentAt: 0)
        let size = segmentedControl.contentOffsetForSegment(at: 0)

        //是否根據內容改變segmentedControl寬度(default = false)
        segmentedControl.apportionsSegmentWidthsByContent = false
        segmentedControl.tintColor = UIColor.gray
        let color = segmentedControl.tintColor
       segmentedControl.removeSegment(at: 6, animated: true)

        //移除所有segmentedControl
//      segmentedControl.removeAllSegments()



        segmentedControl.addTarget(self, action: #selector(segmentChange(sender:)), for: UIControlEvents.valueChanged)





//        let mapView  = MKMapView()
//
//        let locationManager = CLLocationManager()
//        locationManager.requestWhenInUseAuthorization()
//
//
//        mapView.delegate = self as? MKMapViewDelegate
//        mapView.showsUserLocation = true
//        mapView.userTrackingMode = .follow


//        locationManager.delegate = self
//        locationManager.distanceFilter = kCLLocationAccuracyNearestTenMeters
//        locationManager.desiredAccuracy = kCLLocationAccuracyBest



 }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
