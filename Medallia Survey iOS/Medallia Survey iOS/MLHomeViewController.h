//
//  MLHomeViewController.h
//  Medallia Feedback
//
//  Created by Michael Lynn on 7/21/14.
//  Copyright (c) 2014 Michael Lynn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface MLHomeViewController : UIViewController <CLLocationManagerDelegate> {
    CLGeocoder *_geocoder;
    __weak UITextField *_streetField;
    __weak UITextField *_cityField;
    __weak UITextField *_countryField;
    __weak UILabel *_nameLabel;
    __weak UILabel *_coordinatesLabel;
}

@property (nonatomic, strong) CLLocationManager *locationManager;

- (IBAction)viewFeedback:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *cityLabel;
@property (nonatomic, strong) CLGeocoder *geocoder;
@property (weak, nonatomic) IBOutlet UILabel *streetLabel;
@property (weak, nonatomic) IBOutlet UILabel *zipLabel;
@property (nonatomic, weak) IBOutlet UILabel *coordinatesLabel;



@end
