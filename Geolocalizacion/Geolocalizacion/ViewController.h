//
//  ViewController.h
//  Geolocalizacion
//
//  Created by Usuario on 13/06/13.
//  Copyright (c) 2013 cymetria. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController <CLLocationManagerDelegate>

@property (strong, nonatomic) IBOutlet UILabel *lblLatitud;
@property (strong, nonatomic) IBOutlet UILabel *lblLongitud;
@property (strong, nonatomic) IBOutlet UILabel *lblHeading;
@property (strong, nonatomic) IBOutlet MKMapView *mapa;

@property (strong, nonatomic) CLLocationManager *manager;

- (IBAction)comenzarUbicacion:(id)sender;

@end
