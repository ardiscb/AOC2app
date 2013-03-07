//
//  FoodFactory.m
//  AOC2app
//
//  Created by Courtney Ardis on 3/7/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "FoodFactory.h"
#import "baseClass.h"

@implementation FoodFactory
-(id)init
{
    if(self =[super init])
    {
        
    }
    return self;
    
}

//get food name by using foodType
-(baseClass*)GetFood:(int)foodType
{
    if (foodType == 0) {
        return [[baseClass alloc] initWithDetails:0 name:@"burger" numFood:3];
    }
    else if(foodType == 1)
    {
        return [[baseClass alloc] initWithDetails:1 name:@"salad" numFood:5];
    }
    else
    {
        return [[baseClass alloc] initWithDetails:2 name:@"grilledchicken" numFood:2];
    }
    return nil;
}

@end
