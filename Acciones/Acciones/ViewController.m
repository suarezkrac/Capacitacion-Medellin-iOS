//
//  ViewController.m
//  Acciones
//
//  Created by Giovanny Suarez on 12/06/13.
//  Copyright (c) 2013 Cymetria. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize etiqueta;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.etiqueta.text = @"Bienvenido Objective C";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonText:(id)sender {
    self.etiqueta.text = @"Cambie el texto";
    
}

- (IBAction)buttonTextOut:(id)sender {
     self.etiqueta.text = @"Cambie el texto afuera";
}
@end
