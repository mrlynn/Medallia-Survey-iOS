//
//  MLFeedbackControllerViewController.h
//  Medallia Feedback
//
//  Created by Michael Lynn on 7/21/14.
//  Copyright (c) 2014 Michael Lynn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MLFeedbackControllerViewController : UIViewController <UIWebViewDelegate>

@property (strong, nonatomic) IBOutlet UIWebView *feedbackWebView;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@end
