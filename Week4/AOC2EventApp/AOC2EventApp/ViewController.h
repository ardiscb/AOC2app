//
//  ViewController.h
//  AOC2EventApp
//
//  Created by Courtney Ardis on 3/18/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface ViewController : UIViewController <SecondViewDelegate>
{
    IBOutlet UIButton *addEvent;
    IBOutlet UITextView *eventList;
}
-(IBAction)onClick:(id)sender;
@end
