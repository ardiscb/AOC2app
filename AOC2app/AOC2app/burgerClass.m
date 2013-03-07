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

//set values in subClass that is specific to that class
-(id)init
{
    if(self = [super init])
    {
        [self setAttributes:FOODTYPE_BURGER name:@"Burger" number:3];
    }
    return self;
}
@end
