//
//  Contact.h
//  Map View
//
//  Created by Sami Makhlouf on 2013-05-11.
//  Copyright (c) 2013 com.sami.*. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface Contact : UIViewController <MKMapViewDelegate>


-(IBAction)link;

-(IBAction)sms;

-(IBAction)phone;

- (IBAction)maps;

@end
