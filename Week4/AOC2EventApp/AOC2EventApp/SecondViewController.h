//
//  SecondViewController.h
//  AOC2EventApp
//
//  Created by Courtney Ardis on 3/18/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SecondViewDelegate <NSObject>
@required
-(void)DidSave:(NSString*)titleEvent dateString:(NSString*)date;
@end

@interface SecondViewController : UIViewController <UITextFieldDelegate>
{
    IBOutlet UITextField *titleEvent;
    id<SecondViewDelegate> delegate;
    NSDate *eventDate;
    NSDateFormatter *dateFormatter;
    IBOutlet UIDatePicker *datePicker;
    NSString *dateString;
    
    IBOutlet UILabel *swipeLabel;
    UISwipeGestureRecognizer *closeSwiper;
}

-(IBAction)closeKeyboard:(id)sender;
-(IBAction)onChange:(id)sender;

-(IBAction)onSwipe:(UISwipeGestureRecognizer*)recognizer;

//set delegate from outside of topview
@property (strong) id<SecondViewDelegate> delegate;
@end
