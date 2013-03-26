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
    eventList.text = @"Events listed here";
    [self.view addSubview:eventList];
}

- (void)viewDidAppear:(BOOL)animated
{
    //allocate right swiper
    addSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    //set direction
    addSwiper.direction = UISwipeGestureRecognizerDirectionRight;
    //add swipe right gesture to label
    [swipeLabel addGestureRecognizer:addSwiper];
}

-(IBAction)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    //begin animation
    [UIView beginAnimations:nil context:nil];
    
    //set how long the animation should take
    [UIView setAnimationDuration:1.0f];

    if(recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    {
        //open second view to add event
        SecondViewController *secondView = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
        if(secondView != nil)
        {
            secondView.delegate = self;
            [self presentViewController:secondView animated:true completion:nil];
        }
        NSLog(@"You pressed the second view button.");

        
    }
    //end/commit animation
    [UIView commitAnimations];
}
//on close of second view
-(void)DidSave:(NSString*)titleEvent dateString:(NSString*)date;
{

    //after second view closes -- saves event
    //if event list is equal to the placeholder text
    if([eventList.text isEqualToString:@"Events listed here"])
    {
        //set/save the first event
       eventList.text = [NSString stringWithFormat:@"%@ \n%@", titleEvent, date];
        NSLog(@"Saved first event. Date=%@", date);
    }
    else
    {
        //set/save all other new events
        eventList.text = [eventList.text stringByAppendingFormat:@"\n\nNew Event:\n%@ \n%@", titleEvent, date];
        NSLog(@"Saved all other events");
    }
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
