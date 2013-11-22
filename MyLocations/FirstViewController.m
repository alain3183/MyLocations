//
//  FirstViewController.m
//  MyLocations
//
//  Created by Alain Malenfant on 11/22/2013.
//  Copyright (c) 2013 Alain Malenfant. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
// instance variable
{
    CLLocationManager *_locationManager;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    if ((self = [super initWithCoder:aDecoder])) { _locationManager = [[CLLocationManager alloc] init];
    }
    return self;
}

- (void) getLocation:(id)sender
{
    //tells the location manager that the VC is its delegate
    _locationManager.delegate = self;
    //wants locations with an accuracy of 10 meters
    _locationManager.desiredAccuracy =
    kCLLocationAccuracyNearestTenMeters;
    //Then you start the location manager and from that moment on it will send location updates to the delegate, i.e. the view controller
    [_locationManager startUpdatingLocation];
}
    
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - CLLocationManagerDelegate
- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    NSLog(@"didFailWithError %@", error);
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    CLLocation *newLocation = [locations lastObject];
    NSLog(@"didUpdateLocations %@", newLocation);
}

@end
