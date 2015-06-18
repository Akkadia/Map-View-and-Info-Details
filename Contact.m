//
//  Contact.m
//  Map View
//
//  Created by Sami Makhlouf on 2013-05-11.
//  Copyright (c) 2013 com.sami.*. All rights reserved.
//

#import "Contact.h"
#import <MapKit/MapKit.h>

@interface Contact ()

@end

@implementation Contact

-(IBAction)link{
    
    [[UIApplication sharedApplication]
     openURL:[NSURL URLWithString:@"http://www.elijewels.com"]];
}

-(IBAction)sms{
    
    [[UIApplication sharedApplication]
     openURL:[NSURL URLWithString:@"sms:5145016262"]];
    
}

-(IBAction)phone{
    
    
    [[UIApplication sharedApplication]
     openURL:[NSURL URLWithString:@"tel:5145016262"]];
    
    
}

-(IBAction)maps{
    
    [[UIApplication sharedApplication]
     openURL:[NSURL URLWithString:@"http://maps.apple.com?q=14+wyckoff+ste+1+Ramsey+NJ&hl=en&ll=41.056616,-74.146391&spn=0.00122,0.001585&sll=25.03313,121.558128&sspn=0.005862,0.006341&t=m&hnear=14+Wyckoff+Ave+%231,+Ramsey,+Bergen,+New+Jersey+07446&z=19&iwloc=A"]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
