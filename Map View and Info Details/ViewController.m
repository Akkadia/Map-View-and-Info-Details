//
//  ViewController.m
//  Map View
//
//  Created by Sami Makhlouf on 2013-05-11.
//  Copyright (c) 2013 com.sami.*. All rights reserved.
//

#import "ViewController.h"
#import <MapKit/MapKit.h>

@interface ViewController ()

@end

@implementation ViewController
@synthesize myLabel;
@synthesize mapView;

-(void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control{
    myLabel.text = @"3675 Des Sources Bl  Dollard-des-Ormeaux QC H9B 2T6 (514) 542-3434";
}


-(MKAnnotationView *)mapView:(MKMapView*)mapView  viewForAnnotation:(id<MKAnnotation>)annotation {
    MKPinAnnotationView *pinView = (MKPinAnnotationView *) [mapView dequeueReusableAnnotationViewWithIdentifier:@"pinview"];
    if (!pinView) {
        pinView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"pinview"];
        pinView.pinColor = MKPinAnnotationColorRed;
        pinView.animatesDrop = YES;
        pinView.canShowCallout = YES;
        
        UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
                                                          pinView.rightCalloutAccessoryView = rightButton;
                                                          } else {
                                                              pinView.annotation = annotation;
                                                          }
                                                          return pinView;
}




-(IBAction)controlPinch:(UIPinchGestureRecognizer *)recognizer{
    
    
    recognizer.view.transform =
    CGAffineTransformScale(recognizer.view.transform, recognizer.scale,
                           recognizer.scale);
    recognizer.scale = 1;
}


- (void)viewDidLoad

{
    
    [self goLocation];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

}

-(void) goLocation{
    //Create Region
    mapView.mapType= MKMapTypeSatellite;
    
    
    MKCoordinateRegion newRegion;
    newRegion.center.latitude = 45.47844;
    newRegion.center.longitude = -73.815653;
    newRegion.span.latitudeDelta = 0.00211;
    newRegion.span.longitudeDelta = 0.003567;
    
    CLLocationCoordinate2D coordinate;
    coordinate.latitude = 45.47844;
    coordinate.longitude = -73.815653;
    
    //Create Pin
    MKPointAnnotation *annotation = [[MKPointAnnotation alloc] init];
    [annotation setCoordinate:coordinate];
    [annotation setTitle:@"Assigned GPS Location"];
    [annotation setSubtitle:@"(can be changed in the VC.m)"];
    
    
    [self.mapView addAnnotation:annotation];
    
    
    [self.mapView setRegion:newRegion animated:YES];
    
}
    
@end
