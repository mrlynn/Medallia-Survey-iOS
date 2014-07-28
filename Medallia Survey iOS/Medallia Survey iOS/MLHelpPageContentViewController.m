//
//  MLHelpPageContentViewController.m
//  Medallia Survey iOS
//
//  Created by Michael Lynn on 7/24/14.
//  Copyright (c) 2014 Michael Lynn. All rights reserved.
//

#import "MLHelpPageContentViewController.h"

@interface MLHelpPageContentViewController ()

@end

@implementation MLHelpPageContentViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.backgroundImageView.image = [UIImage imageNamed:self.imageFile];
    self.titleLabel.text = self.titleText;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
