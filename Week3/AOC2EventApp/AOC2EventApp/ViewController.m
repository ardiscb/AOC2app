//
//  ViewController.m
//  AOC2EventApp
//
//  Created by Courtney Ardis on 3/18/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

#define ADD_EVENT 0

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if(button != nil)
    {
        if(button.tag == ADD_EVENT)
        {
            SecondViewController *secondView = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
            if(secondView != nil)
            {
                secondView.delegate = self;
                [self presentViewController:secondView animated:true completion:nil];
            }
            NSLog(@"You pressed the second view button. Did it appear?");
        }
    }
}
//on close of second view
-(void)DidSave:(NSString*)titleEvent
{
    //do something after second view closes -- saves event
    eventList.text = [NSString stringWithFormat:@"%@ \n", titleEvent];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
