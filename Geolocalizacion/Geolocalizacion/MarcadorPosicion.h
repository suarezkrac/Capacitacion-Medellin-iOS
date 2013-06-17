//
//  MarcadorPosicion.h
//  Geolocalizacion
//
//  Created by Usuario on 13/06/13.
//  Copyright (c) 2013 cymetria. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface MarcadorPosicion : NSObject <MKAnnotation>

@property CLLocationCoordinate2D coordenada;

@end
