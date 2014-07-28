//
//  MLViewController.m
//  Medallia Survey iOS
//
//  Created by Michael Lynn on 7/21/14.
//  Copyright (c) 2014 Michael Lynn. All rights reserved.
//

#import "MLViewController.h"

@interface MLViewController ()

@end

@implementation MLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    static NSString* const hasRunAppOnceKey = @"hasRunAppOnceKey";
    NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:hasRunAppOnceKey] == NO)
    {
        NSString *surveyURL = [defaults stringForKey:@"surveyURL"];
        if (!surveyURL) {
            surveyURL = @"http://survey.medallia.com/mobile-demo";
            [defaults setObject:surveyURL forKey:@"surveyURL"];
            [defaults synchronize];
        }
        [defaults setBool:YES forKey:hasRunAppOnceKey];
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
