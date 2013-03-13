//
//  TopViewController.m
//  AOC2app
//
//  Created by Courtney Ardis on 3/12/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "TopViewController.h"

@interface TopViewController ()

@end

@implementation TopViewController
@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        delegate = nil;
        // Custom initialization
    }
    return self;
}
//clear text field of default text
//-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
//{
//    textField.text = @"";
//    return true;
//}

-(IBAction)onClose:(id)sender
{

    //Depreciated
    //Use this instead:
    //- (void)dismissViewControllerAnimated: (BOOL)flag completion: (void (^)(void))completion NS_AVAILABLE_IOS(5_0);
    //Depreciated in iOS 6.0
    ////[self dismissModalViewControllerAnimated:true];
    //Replaced
    [self dismissViewControllerAnimated:true completion:nil];
    
//    //call delegate text
//    if(delegate != nil)
//    {
//        [delegate DidClose:textField.text];
//    }
//    return true;
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
