//
//  ViewController.h
//  Map View
//
//  Created by Sami Makhlouf on 2013-05-11.
//  Copyright (c) 2013 com.sami.*. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController <MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

-(IBAction)controlPinch:(UIPinchGestureRecognizer *)recognizer;





-(void) goLocation;
@end
