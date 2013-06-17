//
//  AgregarViewController.h
//  ABM
//
//  Created by Usuario on 14/06/13.
//  Copyright (c) 2013 cymetria. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AgregarViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *txtNombre;
@property (strong, nonatomic) IBOutlet UISwitch *swDebe;

- (IBAction)guardar:(id)sender;
- (IBAction)cancelar:(id)sender;


@end

