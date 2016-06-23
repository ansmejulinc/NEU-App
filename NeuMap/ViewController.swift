//
//  ViewController.swift
//  NeuMap
//
//  Created by iMac_17 on 6/23/2559 BE.
//  Copyright © 2559 iMac_17. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController, MKMapViewDelegate {
    

    
    
    @IBOutlet weak var myMapView: MKMapView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var myLat:CLLocationDegrees = 16.422806
        
        var myLng:CLLocationDegrees = 102.815562
        
        var latDelta:CLLocationDegrees = 0.01
        var lngDelta:CLLocationDegrees = 0.01
        
    
        var theSpan:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lngDelta)
        var neuLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(myLat, myLng)
        
        var theRegion: MKCoordinateRegion = MKCoordinateRegionMake(neuLocation, theSpan)
        
        
        self.myMapView.setRegion(theRegion, animated: true)
        
        
    } // viewDidLoad

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

