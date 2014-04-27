//
//  ViewController.m
//  iOS7StyleLoading
//
//  Created by raj on 15/12/13.
//  Copyright (c) 2013 iPhone. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //To show the Indicator
    [RKiOS7Loading showHUDAddedTo:self.view animated:YES];
    
    //Call the method to hide the Indicator after 3 seconds
    [self performSelector:@selector(stopRKLoading) withObject:nil afterDelay:3];
    
}

-(void)stopRKLoading
{
    [RKiOS7Loading hideHUDForView:self.view animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
