//
//  DetailViewController.m
//  ABM
//
//  Created by Usuario on 14/06/13.
//  Copyright (c) 2013 cymetria. All rights reserved.
//

#import "DetailViewController.h"
#import "Cliente.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController

@synthesize cliente, txtNombre,swDebe;

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [[self.detailItem valueForKey:@"timeStamp"] description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setTxtNombre:nil];
    [self setSwDebe:nil];
    [super viewDidUnload];
}
@end
