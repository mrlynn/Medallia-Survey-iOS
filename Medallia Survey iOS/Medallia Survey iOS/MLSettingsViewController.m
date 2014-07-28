//
//  MLSettingsViewController.m
//  Medallia Survey iOS
//
//  Created by Michael Lynn on 7/22/14.
//  Copyright (c) 2014 Michael Lynn. All rights reserved.
//

#import "MLSettingsViewController.h"

@interface MLSettingsViewController () <UITextFieldDelegate>

@end

@implementation MLSettingsViewController
@synthesize surveyURL;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    surveyURL.layer.cornerRadius = 5;
    surveyURL.clipsToBounds = YES;
    surveyURL.layer.borderWidth = 1.0f;
    surveyURL.layer.borderColor = [[UIColor grayColor] CGColor];
    surveyURL.delegate = self;
    NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
    NSString *savedURL = [defaults stringForKey:@"surveyURL"];
    if (!savedURL) {
        savedURL = @"http://survey.medallia.com/mobile-demo";
        [defaults setObject:savedURL forKey:@"surveyURL"];
        [defaults synchronize];
    }
    surveyURL.text = savedURL;


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (BOOL)isValidUrl:(NSString *)urlString{
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:urlString]];
    BOOL isURL = [NSURLConnection canHandleRequest:request];
    BOOL isMedallia = false;
    if ([urlString rangeOfString:@"medallia"].location == NSNotFound) {
        isMedallia = false;
    } else {
        isMedallia = true;
    }
    return (isURL && isMedallia);
}

- (IBAction)surveyURLChanged:(UITextField *)sender {
    
}

- (IBAction)checkURL:(id)sender {
    BOOL isValidURL = [self isValidUrl:surveyURL.text];
    
    if(!isValidURL)
    {
        // your URL is valid;
        surveyURL.layer.borderWidth = 1.0f;
        surveyURL.layer.borderColor = [[UIColor redColor] CGColor];
    }
    else
    {
        // show alert message for invalid URL;
        surveyURL.layer.borderWidth = 1.0f;
        surveyURL.layer.borderColor = [[UIColor greenColor] CGColor];
    }
    

}

- (IBAction)saveAndView:(id)sender {
    self.tabBarController.selectedIndex = 1;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [surveyURL resignFirstResponder];
}

-(BOOL)textFieldShouldReturn:(UITextField*)textField;
{
    [surveyURL resignFirstResponder];
    return NO;
}
@end
