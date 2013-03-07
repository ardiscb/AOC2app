//
//  baseClass.m
//  AOC2app
//
//  Created by Courtney Ardis on 3/5/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "baseClass.h"

@implementation baseClass

-(id)init
{
    if(self =[super init])
    {
        
    }
    return self;

}

-(NSString*)printName
{
    NSLog(@"Name=%@", foodName);
}

-(int)printNumber
{
    NSLog(@"Number eaten in a week =%d", numberInWeek);
}

-(void)setAttributes:(EFoodType)type name:(NSString*)name number:(int)number

{
    numberInWeek = number;
    foodName = name;
    foodType = type;
}


@end
