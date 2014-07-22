//
//  MLFeedbackControllerViewController.m
//  Medallia Feedback
//
//  Created by Michael Lynn on 7/21/14.
//  Copyright (c) 2014 Michael Lynn. All rights reserved.
//

#import "MLFeedbackControllerViewController.h"

@interface MLFeedbackControllerViewController ()

@end

@implementation MLFeedbackControllerViewController

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
    NSString *fullURL = @"http://survey.medallia.com/mobile-demo";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_feedbackWebView loadRequest:requestObj];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
