//
//  SecondViewController.m
//  AOC2EventApp
//
//  Created by Courtney Ardis on 3/18/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize delegate;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        delegate = nil;
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    eventDate = datePicker.date;
    datePicker.minimumDate = [NSDate date];
    NSLog(@"view did load%@", eventDate);
}

//closes keyboard
-(IBAction)closeKeyboard:(id)sender {
    [titleEvent resignFirstResponder];
}
//saves events
-(IBAction)onSave:(id)sender
{
    
    //if title and date is not empty
    NSLog(@"%@ dateString=%@", eventDate, dateString);
    dateString = [dateFormatter stringFromDate:eventDate];
    if((titleEvent.text.length >1) && (dateString != NULL))
    {
        if(delegate != nil)
        {
            //dismiss second view
            [self dismissViewControllerAnimated:true completion:nil];
            //pass event title to view controller
            [delegate DidSave:titleEvent.text dateString:[dateFormatter stringFromDate:eventDate]];
            
            NSLog(@"In Second View: date=%@", [dateFormatter stringFromDate:eventDate]);
        }
    }
    else
    {
        //alert user text field needs text and date
        NSLog(@"You didn't enter an event title and/or date");
        UIAlertView *emptyAlert = [[UIAlertView alloc] initWithTitle:@"Oops" message:@"Event title and date must not be empty. Please enter an event title and date." delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        if(emptyAlert != nil)
        {
            //show alert
            [emptyAlert show];
        }
    }
}
//date picker
-(IBAction)onChange:(id)sender
{
    eventDate = datePicker.date;
//    NSLog(@"%@", datePicker.minimumDate);
    NSLog(@"%@", eventDate);
    datePicker = (UIDatePicker*)sender;
    if(eventDate != nil)
    {
        dateFormatter = [[NSDateFormatter alloc] init];
        if(dateFormatter != nil)
        {
            //format date
            [dateFormatter setDateStyle:NSDateFormatterFullStyle];
            //format time
            [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        }
//        NSLog(@"%@", [eventDate description]);
        NSLog(@"in on change %@", [dateFormatter stringFromDate:eventDate]);
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
