//
//  MLHelpPageContentViewController.h
//  Medallia Survey iOS
//
//  Created by Michael Lynn on 7/24/14.
//  Copyright (c) 2014 Michael Lynn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MLHelpPageContentViewController : UIViewController 

@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property NSUInteger pageIndex;
@property NSString *titleText;
@property NSString *imageFile;


@end
