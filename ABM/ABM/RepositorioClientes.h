//
//  RepositorioClientes.h
//  ABM
//
//  Created by Usuario on 14/06/13.
//  Copyright (c) 2013 cymetria. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RepositorioClientes : NSObject

@property (strong, nonatomic) NSMutableArray * clientes;

-(void) leer;
-(void) guardar;
-(NSString *) ruta;

+(RepositorioClientes *) sharedInstance;

@end
