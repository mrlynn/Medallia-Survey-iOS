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

- (void)viewWillAppear:(BOOL)animated {
    // ensure that the web view delegate is set
    self.feedbackWebView.delegate = self;
    
    // change the following url to your Medallia Feedless Survey URL
    NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
    NSString *surveyURL = [defaults stringForKey:@"surveyURL"];
    if (!surveyURL) {
        surveyURL = @"http://survey.medallia.com/mobile-demo";
        [defaults setObject:surveyURL forKey:@"surveyURL"];
        [defaults synchronize];
    }
 
    NSURL *url = [NSURL URLWithString:surveyURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_feedbackWebView loadRequest:requestObj];

}

- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)webViewDidStartLoad:(UIWebView *)webView {
    [self.activityIndicator startAnimating];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    [self.activityIndicator stopAnimating];
}

@end
