//
//  ViewController.m
//  Navegador
//
//  Created by Usuario on 13/06/13.
//  Copyright (c) 2013 cymetria. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize navegador, cargando;


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

- (IBAction)leerHTML:(id)sender {
    NSString * html = @"<h1>Esto es HTML</h1><p>Parrafo de contenido</p>";
    
    [navegador loadHTMLString:html baseURL:nil];
}

- (IBAction)ejecutarJS:(id)sender {
    [navegador stringByEvaluatingJavaScriptFromString:@"alert('Hola')"];
}

- (IBAction)leerWeb:(id)sender {
    NSURL * url = [[NSURL alloc] initWithString:@"http://google.com"];
    NSURLRequest * request = [[NSURLRequest alloc]initWithURL:url];
    
    navegador.delegate = self;
    
    [navegador loadRequest:request];
}

- (IBAction)leerPDF:(id)sender {
    NSString * ruta = [[NSBundle mainBundle] pathForResource:@"iphone_user_guide" ofType:@"pdf"];
    NSData * datosPDF = [[NSData alloc] initWithContentsOfFile:ruta];
    [navegador loadData:datosPDF
               MIMEType:@"application/pdf"
       textEncodingName:nil
                baseURL:nil];
}

-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    [cargando stopAnimating];

}
-(void)webViewDidFinishLoad:(UIWebView *)webView{
    [cargando stopAnimating];

}
-(void)webViewDidStartLoad:(UIWebView *)webView{
    [cargando startAnimating];
}









@end
