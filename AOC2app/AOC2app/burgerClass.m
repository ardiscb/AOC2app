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
//contains no setAttributes method

//set values in sub class that is specific to that class
-(id)init
{
    if(self = [super init])
    {
        [self setAttributes:FOODTYPE_BURGER name:@"Burger" number:3];
    }
    return self;
}

-(void)printName
{
    //get base printName AND specific functionality printName
    [super printName];
    NSLog(@"This is the %@ class", foodName);
}
@end
