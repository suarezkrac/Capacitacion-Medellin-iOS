//
//  ViewController.m
//  Geolocalizacion
//
//  Created by Usuario on 13/06/13.
//  Copyright (c) 2013 cymetria. All rights reserved.
//

#import "ViewController.h"
#import "MarcadorPosicion.h"
#import <CoreLocation/CoreLocation.h>

@interface ViewController ()

@end

@implementation ViewController
@synthesize lblLatitud;
@synthesize lblLongitud;
@synthesize lblHeading;
@synthesize manager;
@synthesize mapa;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)comenzarUbicacion:(id)sender {
    
    self.manager = [[CLLocationManager alloc] init];
    manager.distanceFilter = 100;
    manager.desiredAccuracy = kCLLocationAccuracyThreeKilometers;
    manager.delegate = self;
    
    [manager startUpdatingLocation];
    [manager startUpdatingHeading];
    
}

-(void) locationManager:(CLLocationManager *)manager didUpdateHeading:(CLHeading *)newHeading{
    lblHeading.text = [[NSString alloc] initWithFormat:@"%f", newHeading.magneticHeading ];
}

-(BOOL) locationManagerShouldDisplayHeadingCalibration:(CLLocationManager *)manager{
    return YES;
}

-(void) locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
    //ALERTA CUANDO NO PUDO LOCALIZAR!!
}
-(void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation{

    lblLatitud.text = [[NSString alloc] initWithFormat:@"%f", newLocation.coordinate.latitude ];
    
    lblLongitud.text = [[NSString alloc] initWithFormat:@"%f", newLocation.coordinate.longitude ];
    
    MKCoordinateRegion region;
    region.center.latitude = newLocation.coordinate.latitude;
    region.center.longitude = newLocation.coordinate.longitude;
    region.span.latitudeDelta = 0.005;
    region.span.longitudeDelta = 0.005;
    
    [mapa setRegion:region animated:YES];
    
    MarcadorPosicion * marcador = [[MarcadorPosicion alloc] init];
    marcador.coordenada = newLocation.coordinate;
    
    [mapa addAnnotation: marcador];
    
}

@end











