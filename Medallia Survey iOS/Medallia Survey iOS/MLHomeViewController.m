//
//  MLHomeViewController.m
//  Medallia Feedback
//
//  Created by Michael Lynn on 7/21/14.
//  Copyright (c) 2014 Michael Lynn. All rights reserved.
//

#import "MLHomeViewController.h"

@interface MLHomeViewController ()

@end

@implementation MLHomeViewController

@synthesize cityLabel,streetLabel,zipLabel,locationManager;

int locationFetchCounter;
@synthesize geocoder;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void) viewWillAppear:(BOOL)animated {
    locationManager = [[CLLocationManager alloc] init];
    locationManager.delegate = self;
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    geocoder = [[CLGeocoder alloc] init];
    [locationManager startUpdatingLocation];
    [locationManager stopUpdatingLocation];
    CLLocation *location = [locationManager location];
    // Configure the new event with information from the location
    
    float longitude=location.coordinate.longitude;
    float latitude=location.coordinate.latitude;
    CLGeocoder *geocoder = [[CLGeocoder alloc] init];
    [geocoder reverseGeocodeLocation:location completionHandler:^(NSArray *placemarks, NSError *error) {
        if (placemarks != nil) {
            self.zipLabel.text = [placemarks[0] postalCode];
            self.cityLabel.text = [placemarks[0] locality];
            self.streetLabel.text = [placemarks[0] thoroughfare];

            
        }
        NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
            [defaults setObject:self.coordinatesLabel.text forKey:@"coordinates"];
            [defaults synchronize];


    }];
    
    _coordinatesLabel.text = [NSString stringWithFormat:@"%.8f,%.8f", latitude,longitude];
    
    
    
    NSLog(@"dLongitude : %f", longitude);
    NSLog(@"dLatitude : %f", latitude);

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)viewFeedback:(id)sender {
    
    self.tabBarController.selectedIndex = 1;
}


- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {

    NSLog(@"didUpdateToLocation: %@", newLocation);
    CLLocation *currentLocation = newLocation;
    if (currentLocation != nil) {
        _coordinatesLabel.text = [NSString stringWithFormat:@"%.8f", currentLocation.coordinate.longitude];
    }
    
    // this delegate method is constantly invoked every some miliseconds.
    // we only need to receive the first response, so we skip the others.
    if (locationFetchCounter > 0) return;
    locationFetchCounter++;
    
    [locationManager stopUpdatingLocation];
    [self.view setNeedsDisplay];

}


- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    NSLog(@"failed to fetch current location : %@", error);
}

@end
