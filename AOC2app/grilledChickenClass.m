//
//  grilledChickenClass.m
//  AOC2app
//
//  Created by Courtney Ardis on 3/6/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "grilledChickenClass.h"
#import "baseClass.h"

@implementation grilledChickenClass

@synthesize numPiecesOfChicken, ounces;

//set values in sub class that is specific to that class
-(id)init
{
    if(self = [super init])
    {
        //set default values for grilled chicken
        [self setOunces:0];
        [self setNumPiecesOfChicken:2];
        [self setTotal:20];
    }
    return self;
}

//calculate price per week paid for grilled chicken
-(void)calculatePricePerWeek
{
    //set total
    //multiply number of pieces of chick by ounces
    [self setTotal:(numPiecesOfChicken * ounces)];
    NSLog(@"You have spent %i dollars", self.total);
}


@end
