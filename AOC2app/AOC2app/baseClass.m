//
//  baseClass.m
//  AOC2app
//
//  Created by Courtney Ardis on 3/5/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "baseClass.h"

@interface baseClass ()

@end

@implementation baseClass

-(id)initWithDetails:(int)type name:(NSString*)name numFood:(int)numFood
{
    if(self =[super init])
    {
        foodType = type;
        foodName =name;
        numberInWeek = numFood;
        
        //initialize properties
        [self setTotal:0];
        [self setAdvice:nil];
        
    }
    return self;

}

@synthesize total, advice;

//calculation method to find the price spent per week on each food
-(void)calculatePricePerWeek
{
    NSLog(@"You spent %d this week", total);
}

-(int)printNumber
{
    NSLog(@"Number eaten in a week: %d", numberInWeek);
    return numberInWeek;
}

-(void)printNameByType
{
    NSLog(@"I am a %@ with a type of %i", foodName, foodType);
}

@end
