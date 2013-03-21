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
-(IBAction)onSave:(id)sender
{
    //if title and date is not empty
    if(titleEvent.text != nil)
    {
        if(delegate != nil)
        {
            [self dismissViewControllerAnimated:true completion:nil];
            //pass event title to view controller
            [delegate DidSave:titleEvent.text dateString:[dateFormatter stringFromDate:date]];
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
    UIDatePicker *picker = (UIDatePicker*)sender;
    if(picker != nil)
    {
        date = picker.date;
        dateFormatter = [[NSDateFormatter alloc] init];
        if(dateFormatter != nil)
        {
            //format date
            [dateFormatter setDateStyle:NSDateFormatterFullStyle];
            //format time
            [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        }
        NSLog(@"%@", [date description]);
        NSLog(@"%@", [dateFormatter stringFromDate:date]);
    }
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
