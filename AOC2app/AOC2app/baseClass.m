//
//  baseClass.m
//  AOC2app
//
//  Created by Courtney Ardis on 3/5/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "baseClass.h"

@implementation baseClass

-(id)initWithDetails:(int)type name:(NSString*)name numFood:(int)numFood
{
    if(self =[super init])
    {
        foodType = type;
        foodName =name;
        numberInWeek = numFood;
    }
    return self;

}

-(NSString*)printName
{
    NSLog(@"Name=%@", foodName);
    return foodName;
}

-(int)printNumber
{
    NSLog(@"Number eaten in a week =%d", numberInWeek);
    return numberInWeek;
}

-(void)printNameByType
{
    NSLog(@"I am a %@", foodName);
}

-(void)setAttributes:(EFoodType)type name:(NSString*)name number:(int)number

{
    numberInWeek = number;
    foodName = name;
    foodType = type;
}


@end
