//
//  MLHelpViewController.h
//  Medallia Survey iOS
//
//  Created by Michael Lynn on 7/24/14.
//  Copyright (c) 2014 Michael Lynn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MLHelpPageContentViewController.h"


@interface MLHelpViewController : UIViewController <UIPageViewControllerDataSource>

- (IBAction)startWalkthrough:(id)sender;
@property (strong, nonatomic) UIPageViewController *pageViewController;
@property (strong, nonatomic) NSArray *pageTitles;
@property (strong, nonatomic) NSArray *pageImages;


@end
