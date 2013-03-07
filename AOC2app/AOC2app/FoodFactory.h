//
//  FoodFactory.h
//  AOC2app
//
//  Created by Courtney Ardis on 3/7/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseClass.h"

@interface FoodFactory : NSObject
-(baseClass*)GetFood:(int)foodType;

@end
