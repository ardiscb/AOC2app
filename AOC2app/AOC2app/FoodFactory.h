//
//  FoodFactory.h
//  AOC2app
//
//  Created by Courtney Ardis on 3/7/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseClass.h"  
#import "burgerClass.h"
#import "saladClass.h"
#import "grilledChickenClass.h"

//#define BURGER 0
//#define SALAD 1
//#define GRILLEDCHICKEN 2

typedef enum{
    BURGER =0,
    SALAD,
    GRILLEDCHICKEN
} myFood;
@interface FoodFactory : NSObject

+(baseClass*)GetFood:(int)foodType;
+(baseClass*)createFood:(int)foodType;

@end
