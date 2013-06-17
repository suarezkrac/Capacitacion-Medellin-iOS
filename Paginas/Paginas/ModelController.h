//
//  ModelController.h
//  Paginas
//
//  Created by Usuario on 13/06/13.
//  Copyright (c) 2013 cymetria. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DataViewController;


@interface ModelController : NSObject <UIPageViewControllerDataSource>



-(DataViewController *) viewControllerAtIndex: (NSUInteger)index storyboard:(UIStoryboard *)storyboard;

-(NSUInteger) indexOfViewController:(DataViewController *)viewController;

@end
