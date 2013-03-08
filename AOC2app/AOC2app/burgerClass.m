//
//  burgerClass.m
//  AOC2app
//
//  Created by Courtney Ardis on 3/6/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "burgerClass.h"
#import "baseClass.h"

@implementation burgerClass

@synthesize numPatties, pricePerPatty;

//set values in sub class that is specific to that class
-(id)init
{
    if(self = [super init])
    {
        [self setNumPatties:0];
        [self setTotal:20];
        [self setPricePerPatty:5];
    }
    return self;
}

//override base values
-(void)calculatePricePerWeek
{
    [self setTotal:(numPatties * pricePerPatty)];
    NSLog(@"You have spent %i dollars", self.total);
}

@end
