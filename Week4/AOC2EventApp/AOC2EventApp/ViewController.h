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
    IBOutlet UITextView *eventList;
    
    IBOutlet UIButton *saveBtn;
    IBOutlet UIButton *clearBtn;
    
    IBOutlet UILabel *swipeLabel;
    
    UISwipeGestureRecognizer *addSwiper;
}
-(IBAction)onSwipe:(UISwipeGestureRecognizer*)recognizer;
-(IBAction)onSave:(id)sender;
-(IBAction)onClear:(id)sender;
@end
