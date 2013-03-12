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

//create food instance
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
