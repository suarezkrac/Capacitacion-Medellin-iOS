//
//  ViewController.m
//  Imagen
//
//  Created by Usuario on 13/06/13.
//  Copyright (c) 2013 cymetria. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize animacion, txtURL, imageView;

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

- (IBAction)leerImagen:(id)sender {
    [animacion startAnimating];
    NSURL * url = [NSURL URLWithString:txtURL.text];
    
    NSData * datos = [[NSData alloc] initWithContentsOfURL:url];
    
    UIImage * imagen = [[UIImage alloc] initWithData:datos];
    
    imageView.image = imagen;
    
    [txtURL resignFirstResponder];
    
    [animacion stopAnimating];
    
    
}
@end
