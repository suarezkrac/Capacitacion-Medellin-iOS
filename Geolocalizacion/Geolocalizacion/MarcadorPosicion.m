//
//  MarcadorPosicion.m
//  Geolocalizacion
//
//  Created by Usuario on 13/06/13.
//  Copyright (c) 2013 cymetria. All rights reserved.
//

#import "MarcadorPosicion.h"

@implementation MarcadorPosicion
@synthesize coordenada;

-(CLLocationCoordinate2D)coordinate{
    return coordenada;
}

-(NSString *) title{
    return @"Aqui Estamos";
}

-(NSString *) subtitle{
    return @"Posicion encontrada por tu equipo";
}

@end
