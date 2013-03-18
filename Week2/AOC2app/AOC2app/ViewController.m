//
//  ViewController.m
//  AOC2app
//
//  Created by Courtney Ardis on 3/4/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "ViewController.h"
//import FoodFactory - factory
#import "FoodFactory.h"
//import TopViewController.h
#import "TopViewController.h"

#define BURGER_BUTTON 0
#define SALAD_BUTTON 1
#define GCHICK_BUTTON 2
#define STEPPER 4
#define CAL_BUTTON 5
#define SEGMENT 6
#define INFO_BUTTON 7
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //create info button
    infoBtn = [UIButton buttonWithType:UIButtonTypeInfoDark];
    //position info button
    infoBtn.frame = CGRectMake(280.0f, 435.0f, 20.0f, 20.0f);
    //on click event for info button
    [infoBtn addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    infoBtn.tag = INFO_BUTTON;
    //add info button to view
    [self.view addSubview:infoBtn];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


//onClick event for all buttons on main ViewController
-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if(button != nil)
    {
        //if burger button is clicked
        if(button.tag == BURGER_BUTTON)
        {
            //make burger button disabled
            burgerBtn.enabled = false;
            //make all others enabled
            saladBtn.enabled = true;
            gChickBtn.enabled = true;
            NSLog(@"you pressed burger");
            //display food item that is clicked in the text field
            result.text = @"You chose to eat a burger";
        }
        //if salad button is clicked
        else if(button.tag == SALAD_BUTTON)
        {
            //make salad button disabled
            saladBtn.enabled = false;
            //make all others enabled
            burgerBtn.enabled = true;
            gChickBtn.enabled = true;
            NSLog(@"you pressed salad");
            //display food item that is clicked in the text field
            result.text = @"You chose to eat a salad";
            
        }
        //if grilled chicken is clicked
        else if(button.tag == GCHICK_BUTTON)
        {
            //make grilled chicken button disabled
            gChickBtn.enabled = false;
            //make all others enabled
            burgerBtn.enabled = true;
            saladBtn.enabled = true;
            NSLog(@"you pressed grilled chicken");
            //display food item that is clicked in the text field
            result.text = @"You chose to eat grilled chicken";
            
        }
        else if(button.tag == CAL_BUTTON)
        {
            NSLog(@"you pressed calculate");
            //display result of calculation multiplied by stepper(number eaten in a week)
            if(burgerBtn.enabled == false)
            {
                //create factory
                burgerClass *burgerCal = (burgerClass*)[FoodFactory createFood:BURGER];
                //set values
                [burgerCal setNumPatties:2];
                [burgerCal calculatePricePerWeek];
                //set price per week for final calculation
                int pricePerWeek = burgerCal.total * currentValue;
                NSLog(@"%d", burgerCal.total);
                NSLog(@"%d", pricePerWeek);
                //display calculation in text field
                result.text = [NSString stringWithFormat:@"You spent $%d in a week on %d burgers", pricePerWeek, currentValue];
            }
            else if(saladBtn.enabled == false)
            {
                //create factory
                saladClass *saladCal = (saladClass*)[FoodFactory createFood:SALAD];
                //set calculation
                [saladCal setAmtDressingInCups:2];
                [saladCal setNumCroutons:4];
                [saladCal calculatePricePerWeek];
                //set price per week for final calculation
                int pricePerWeek = saladCal.total * currentValue;
                NSLog(@"%d", saladCal.total);
                NSLog(@"%d", pricePerWeek);
                //display calculation in text field
                result.text = [NSString stringWithFormat:@"You spent $%d in a week on %d salads", pricePerWeek, currentValue];
            }
            else if(gChickBtn.enabled == false)
            {
                //create factory
                grilledChickenClass *gChickCal = (grilledChickenClass*)[FoodFactory createFood:GRILLEDCHICKEN];
                //set calculation
                [gChickCal setNumPiecesOfChicken:3];
                [gChickCal setOunces:6];
                [gChickCal calculatePricePerWeek];
                //set price per week for final calculation
                int pricePerWeek = gChickCal.total * currentValue;
                NSLog(@"%d", gChickCal.total);
                NSLog(@"%d", pricePerWeek);
                //display calculation in text field
                result.text = [NSString stringWithFormat:@"You spent $%d in a week on %d grilled chicken", pricePerWeek, currentValue];
            }
            else
            {
                NSLog(@"Everything is enabled");
            }
            
        }
        else if(button.tag == INFO_BUTTON)
        {
            TopViewController *topView = [[TopViewController alloc] initWithNibName:@"TopView" bundle:nil];
            if(topView != nil)
            {
                topView.delegate = self;
                [self presentViewController:topView animated:true completion:nil];
            }
            NSLog(@"You pressed the info button");
            
        }
        else{
            NSLog(@"Where'd you find that button?!?");
        }
    }

}

//on close of modal view
-(void)DidClose:(NSString*)nameString
{
    //do something after second view closes
}

//as the stepper changes, update the textField
-(IBAction)onChange:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if(button != nil)
    {
        if(button.tag == STEPPER)
        {
            
            UIStepper *stepControl = (UIStepper*) sender;
            if(stepControl != nil)
            {
                //set value of stepper
                currentValue = stepControl.value;
                //display value in text field
                result.text = [NSString stringWithFormat:@"You ate %d in a week", currentValue];
                //show value in label beside stepper
                stepperLabel.text = [NSString stringWithFormat:@"%d", currentValue];
                NSLog(@"Step value = %d", currentValue);
                
            }
        }
        else if (button.tag == SEGMENT)
        {
            UISegmentedControl *segControl = (UISegmentedControl*)sender;
            if(segControl != nil)
            {
                //set value of selected index
                int selectedIndex = segControl.selectedSegmentIndex;
                NSLog(@"selected index = %d", selectedIndex);
                //if green is selected
                if(selectedIndex == 0)
                {
                    //display a green background
                    self.view.backgroundColor = [UIColor colorWithRed:0.523 green:0.897 blue:0.451 alpha:1];
                }
                //if blue is selected
                else if(selectedIndex == 1)
                {
                    //display a blue background
                    self.view.backgroundColor = [UIColor colorWithRed:0.223 green:0.597 blue:0.751 alpha:1];
                }
                //if purple is selected
                else if(selectedIndex == 2)
                {
                    //display a purple background
                    self.view.backgroundColor = [UIColor colorWithRed:0.623 green:0.497 blue:0.651 alpha:1];
                }
            }
        }
    }
    
}
 
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    int selectedIndex = segmentControl.selectedSegmentIndex;
    self.view.backgroundColor = [UIColor colorWithRed:0.523 green:0.897 blue:0.451 alpha:1];
    [super viewDidAppear:animated];
}
@end
