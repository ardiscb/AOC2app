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
    IBOutlet UIButton *saveBtn;
    IBOutlet UITextField *titleEvent;
    id<SecondViewDelegate> delegate;
    NSDate *eventDate;
    NSDateFormatter *dateFormatter;
    IBOutlet UIDatePicker *datePicker;
    NSString *dateString;
}

-(IBAction)onSave:(id)sender;
-(IBAction)closeKeyboard:(id)sender;
-(IBAction)onChange:(id)sender;

//set delegate from outside of topview
@property (strong) id<SecondViewDelegate> delegate;
@end
