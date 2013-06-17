//
//  ViewController.m
//  JSON
//
//  Created by Usuario on 14/06/13.
//  Copyright (c) 2013 cymetria. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){

    IBOutlet UILabel * label;

}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
       
        NSData * kivaData = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://localhost:8888/json.php"]];
        
        NSDictionary * json = nil;
        
        if(kivaData){
            json = [NSJSONSerialization JSONObjectWithData:kivaData
                                                   options:kNilOptions
                                                     error:nil];
        }
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [self updateUIWithDictionary: json];
        });
    });
    
    
}
-(void) updateUIWithDictionary: (NSDictionary*)json{
    @try {
        NSString * cadena = @"";
        NSString * valorJson;
        for (int i = 0; i<=1; i++) {
            valorJson = [NSString stringWithFormat:@"El cliente %@ tiene numero de cedula %@ y registro %@",
                         json[@"clientes"][i][@"nombre"],
                         json[@"clientes"][i][@"cedula"],
                         json[@"clientes"][i][@"id"],
                         nil];
            
            cadena = [cadena stringByAppendingString:valorJson];
        }

        
        label.text = [NSString stringWithFormat:@"Clientes: %@", cadena, nil];
        
    }
    @catch (NSException *exception) {
        
        
        
        [[[UIAlertView alloc] initWithTitle:@"Error"
                                    message: [NSString stringWithFormat:@"Error: %@", exception]
                                  delegate:nil
                         cancelButtonTitle:@"Cerrar"
                         otherButtonTitles:nil] show];
        
  
    }
  

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
