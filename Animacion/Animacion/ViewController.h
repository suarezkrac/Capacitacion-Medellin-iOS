//
//  ViewController.h
//  Animacion
//
//  Created by Usuario on 13/06/13.
//  Copyright (c) 2013 cymetria. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIView *caja;


- (IBAction)animar:(id)sender;
- (IBAction)animarDoble:(id)sender;
- (IBAction)animarOpciones:(id)sender;

@end
