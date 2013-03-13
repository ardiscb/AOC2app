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
    IBOutlet UILabel *nameLabel;
    IBOutlet UITextField *result;
    IBOutlet UIButton *burgerBtn,
                      *saladBtn,
                      *gChickBtn;
    IBOutlet UIButton *infoBtn;

}

-(IBAction)onClick:(id)sender;

@end
