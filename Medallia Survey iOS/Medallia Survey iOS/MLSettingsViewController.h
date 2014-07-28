//
//  MLSettingsViewController.h
//  Medallia Survey iOS
//
//  Created by Michael Lynn on 7/22/14.
//  Copyright (c) 2014 Michael Lynn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MLSettingsViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *surveyURL;
- (IBAction)surveyURLChanged:(UITextField *)sender;
- (IBAction)checkURL:(id)sender;
- (IBAction)saveAndView:(id)sender;

@end
