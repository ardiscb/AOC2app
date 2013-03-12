//
//  ViewController.h
//  AOC2app
//
//  Created by Courtney Ardis on 3/4/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import <UIKit/UIKit.h>
//import factory
#import "FoodFactory.h"
#import "TopViewController.h"


@class baseClass;

@interface ViewController : UIViewController <TopViewDelegate>
{
//    UILabel *burgerLabel,
//            *burgerCustom,
//            *saladLabel,
//            *saladCustom,
//            *gChickenLabel,
//            *gChickenCustom;
    IBOutlet UILabel *nameLabel;
}

-(IBAction)onClick:(id)sender;

@end
