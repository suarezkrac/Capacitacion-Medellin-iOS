//
//  DetailViewController.h
//  ABM
//
//  Created by Usuario on 14/06/13.
//  Copyright (c) 2013 cymetria. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Cliente;

@interface DetailViewController : UIViewController

@property (strong, nonatomic) Cliente * cliente;

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@property (strong, nonatomic) IBOutlet UITextField *txtNombre;
@property (strong, nonatomic) IBOutlet UISwitch *swDebe;

@end
