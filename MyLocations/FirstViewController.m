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

- (void) getLocation:(id)sender{
// do nothing yet

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

@end
