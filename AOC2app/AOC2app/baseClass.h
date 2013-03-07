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
//    EFoodType foodType;
    int foodType;
    NSString *foodName;
    
    int numberInWeek;
    
}

//used by burgerClass
-(void)setAttributes:(EFoodType)type name:(NSString*)name number:(int)number;

-(NSString*)printName;
-(int)printNumber;
-(id)initWithDetails:(int)type name:(NSString*)name numFood:(int)numFood;
-(void)printNameByType;

@end
