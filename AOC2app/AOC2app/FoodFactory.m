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
//change - to + to change an instance method to a class method to avoid the need to instantiate the factory class
+(baseClass*)GetFood:(int)foodType
{
    if (foodType == BURGER) {
        return [[baseClass alloc] initWithDetails:BURGER name:@"burger" numFood:3];
    }
    else if(foodType == SALAD)
    {
        return [[baseClass alloc] initWithDetails:SALAD name:@"salad" numFood:5];
    }
    else
    {
        return [[baseClass alloc] initWithDetails:GRILLEDCHICKEN name:@"grilledchicken" numFood:2];
    }
    return nil;
}
+(baseClass*)createFood:(int)foodType
{
    if (foodType == BURGER)
    {
        return [[burgerClass alloc] init];
    }
    else if (foodType == SALAD)
    {
        return [[saladClass alloc] init];
    }
    else if (foodType == GRILLEDCHICKEN)
    {
        return [[grilledChickenClass alloc] init];
    }
    else return nil;
}

@end
