//
//  baseClass.h
//  AOC2app
//
//  Created by Courtney Ardis on 3/5/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import <Foundation/Foundation.h>

//inheritance
typedef enum
{
    FOODTYPE_BURGER=0,
    FOODTYPE_SALAD,
    FOODTYPE_GRILLEDCHICKEN,
} EFoodType;

@interface baseClass : NSObject
{
//neither public nor private
@protected
    int foodType;
    NSString *foodName;
    
    int numberInWeek;
}

//class properties
@property (assign) NSString *advice;
@property int total;

//used by subclasses
-(int)printNumber;
-(id)initWithDetails:(int)type name:(NSString*)name numFood:(int)numFood;
-(void)printNameByType;
-(void)calculatePricePerWeek;

@end
