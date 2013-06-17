//
//  ViewController.h
//  Navegador
//
//  Created by Usuario on 13/06/13.
//  Copyright (c) 2013 cymetria. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIWebViewDelegate>

- (IBAction)leerHTML:(id)sender;
- (IBAction)ejecutarJS:(id)sender;
- (IBAction)leerWeb:(id)sender;
- (IBAction)leerPDF:(id)sender;

@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *cargando;

@property (strong, nonatomic) IBOutlet UIWebView *navegador;

@end
