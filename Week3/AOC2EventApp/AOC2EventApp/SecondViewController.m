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
    NSLog(@"%@", eventDate);
//    NSLog(@"%@", datePicker.minimumDate);
//    NSLog(@"Date set to current date. All others disabled?");
}
-(IBAction)onSave:(id)sender
{
    //titleEvent.text is never == nil (else never gets hit) :( hmm.
    
    //if title and date is not empty
    if(titleEvent.text.length >1)
    {
        if(delegate != nil)
        {
            [self dismissViewControllerAnimated:true completion:nil];
            //pass event title to view controller
            [delegate DidSave:titleEvent.text dateString:[dateFormatter stringFromDate:eventDate]];
        }
    }
    else
    {
        NSLog(@"You didn't enter an event title");
        UIAlertView *emptyAlert = [[UIAlertView alloc] initWithTitle:@"Oops" message:@"Event title must not be empty. Please enter an event title." delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        if(emptyAlert != nil)
        {
            [emptyAlert show];
        }
    }
}
//closes keyboard
-(IBAction)closeKeyboard:(id)sender {
    [titleEvent resignFirstResponder];
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
        NSLog(@"%@", [dateFormatter stringFromDate:eventDate]);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
