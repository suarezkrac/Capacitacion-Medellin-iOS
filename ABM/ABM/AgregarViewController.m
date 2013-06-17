//
//  AgregarViewController.m
//  ABM
//
//  Created by Usuario on 14/06/13.
//  Copyright (c) 2013 cymetria. All rights reserved.
//

#import "AgregarViewController.h"
#import "Cliente.h"
#import "RepositorioClientes.h"

@interface AgregarViewController ()

@end

@implementation AgregarViewController

@synthesize txtNombre, swDebe;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)guardar:(id)sender {
    if( [txtNombre.text length]<3)
    {
        UIAlertView * alerta = [[UIAlertView alloc] initWithTitle:@"Error"
                                                          message:@"El nombre debe tener al menos 3 letras"
                                                         delegate:nil
                                                cancelButtonTitle:@"Aceptar"
                                                otherButtonTitles:nil];
        [alerta show];
    }else{
        Cliente * cliente = [[Cliente alloc] init];
        cliente.nombre = txtNombre.text;
        cliente.debeDinero = swDebe.on;
        
        NSMutableArray * clientes = [RepositorioClientes sharedInstance].clientes;
        
        [clientes addObject:cliente];
        
        [self dismissModalViewControllerAnimated:YES];
    }
    
    
}

- (IBAction)cancelar:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}









@end
