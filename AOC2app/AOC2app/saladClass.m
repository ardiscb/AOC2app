//
//  saladClass.m
//  AOC2app
//
//  Created by Courtney Ardis on 3/6/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "saladClass.h"
#import "baseClass.h"

@implementation saladClass

@synthesize numCroutons, amtDressingInCups;

//set values in sub class that is specific to that class
-(id)init
{
    if(self = [super init])
    {
        //set default values for salad
        [self setNumCroutons:0];
        [self setAmtDressingInCups:2];
    }
    return self;
}

//calculate price per week paid for salad
-(void)calculatePricePerWeek
{
    //set total
    //multiply number of croutons by cups of dressing
    [self setTotal:(numCroutons * amtDressingInCups)];
    NSLog(@"You have spent %i dollars", self.total);
}

@end
