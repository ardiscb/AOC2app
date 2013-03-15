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
    infoBtn.frame = CGRectMake(280.0f, 435.0f, 20.0f, 20.0f);
    [infoBtn addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    infoBtn.tag = INFO_BUTTON;
    [self.view addSubview:infoBtn];
    
    
//    //create burger
//    //    baseClass *burger = [FoodFactory GetFood:BURGER];
//    
//    burgerClass *burgerDetails = (burgerClass*)[FoodFactory createFood:BURGER];
//    //set number of patties
//    [burgerDetails setNumPatties:3];
//    
//    //create salad
//    //    baseClass *salad = [FoodFactory GetFood:SALAD];
//    saladClass *saladDetails = (saladClass*)[FoodFactory createFood:SALAD];
//    //set numCroutons and amtDressingInCups
//    [saladDetails setNumCroutons:4];
//    [saladDetails setAmtDressingInCups:1];
//    
//    //create grilled chicken
//    //    baseClass *gChicken = [FoodFactory GetFood:GRILLEDCHICKEN];
//    grilledChickenClass *gChickenDetails = (grilledChickenClass*)[FoodFactory createFood:GRILLEDCHICKEN];
//    //set ounces of chicken
//    [gChickenDetails setOunces:8];
//    
//    
//    //  instance of factory - no need for this when using a class method, like the ones above
//    //  FoodFactory *foodFactory = [[FoodFactory alloc] init];
//    
//    if(burgerDetails != nil)
//    {
//        //print name of food(burger) by using the foodType and a factory
//        //baseClass *burger = [foodFactory GetFood:BURGER];
//        [burgerDetails printNumber];
//        
//        //set burger advice
//        NSString *burgerAdvice = @"Advice: Eat less burgers";
//        [burgerDetails setAdvice:burgerAdvice];
//        NSLog(@"%@", [burgerDetails advice]);
//        
//        [burgerDetails total];
//        
//        //calculate and log
//        [burgerDetails calculatePricePerWeek];
//    }
//    if(saladDetails != nil)
//    {
//        //print name of food(salad) by using the foodType and a factory
//        //        baseClass *salad = [foodFactory GetFood:SALAD];
//        [saladDetails printNumber];
//        
//        //set salad advice
//        NSString *saladAdvice = @"Advice: Eat more salads!";
//        [saladDetails setAdvice:saladAdvice];
//        NSLog(@"%@", [saladDetails advice]);
//        
//        [saladDetails total];
//        //calculate and log
//        [saladDetails calculatePricePerWeek];
//    }
//    if(gChickenDetails != nil)
//    {
//        //        baseClass *gChicken = [foodFactory GetFood:GRILLEDCHICKEN];
//        [gChickenDetails printNumber];
//        
//        //set grilled chicken advice
//        NSString *gChickenAdvice = @"Advice: Eat a moderate amount of chicken. :)";
//        [gChickenDetails setAdvice:gChickenAdvice];
//        NSLog(@"%@", [gChickenDetails advice]);
//        
//        [gChickenDetails total];
//        //calculate and log
//        [gChickenDetails calculatePricePerWeek];
//    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


//onClick event for all buttons on main ViewController
-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if(button != nil)
    {
        if(button.tag == BURGER_BUTTON)
        {
            burgerBtn.enabled = false;
            burgerBtn.highlighted = true;
            saladBtn.enabled = true;
            gChickBtn.enabled = true;
            NSLog(@"you pressed burger");
            result.text = @"You chose to eat a burger";
        }
        else if(button.tag == SALAD_BUTTON)
        {
            burgerBtn.enabled = true;
            saladBtn.enabled = false;
            gChickBtn.enabled = true;
            NSLog(@"you pressed salad");
            result.text = @"You chose to eat a salad";
            
        }
        else if(button.tag == GCHICK_BUTTON)
        {
            burgerBtn.enabled = true;
            saladBtn.enabled = true;
            gChickBtn.enabled = false;
            NSLog(@"you pressed grilled chicken");
            result.text = @"You chose to eat grilled chicken";
            
        }
        else if(button.tag == 3)
        {
            NSLog(@"you clicked in the text field ");
            
        }
        else if(button.tag == CAL_BUTTON)
        {
            NSLog(@"you pressed calculate");
            //display result of calculation multiplied by stepper(number eaten in a week)
            if(burgerBtn.enabled == false)
            {
                //create factory
                burgerClass *burgerCal = (burgerClass*)[FoodFactory createFood:BURGER];
                //override calculation
                [burgerCal setNumPatties:2];
                [burgerCal calculatePricePerWeek];
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
                //override calculation
                [saladCal setAmtDressingInCups:2];
                [saladCal setNumCroutons:4];
                [saladCal calculatePricePerWeek];
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
                //override calculation
                [gChickCal setNumPiecesOfChicken:3];
                [gChickCal setOunces:6];
                [gChickCal calculatePricePerWeek];
                int pricePerWeek = gChickCal.total * currentValue;
                NSLog(@"%d", gChickCal.total);
                NSLog(@"%d", pricePerWeek);
                //display calculation in text field
                result.text = [NSString stringWithFormat:@"You spent $%d in a week on %d grilled chicken", pricePerWeek, currentValue];
            }
            
        }
        else if(button.tag == INFO_BUTTON)
        {
            //if you click on topview (info button)
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

//on close of modal view; replace what was in the text box in the nameLabel on main view 
-(void)DidClose:(NSString*)nameString
{
    nameLabel.text = nameString;
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
                currentValue = stepControl.value;
                result.text = [NSString stringWithFormat:@"You ate %d in a week", currentValue];
                stepperLabel.text = [NSString stringWithFormat:@"%d", currentValue];
                NSLog(@"Step value = %d", currentValue);
                
            }
        }
        else if (button.tag == SEGMENT)
        {
            UISegmentedControl *segmentControl = (UISegmentedControl*)sender;
            if(segmentControl != nil)
            {
                int selectedIndex = segmentControl.selectedSegmentIndex;
                NSLog(@"selected index = %d", selectedIndex);
                if(selectedIndex == 0)
                {
                    self.view.backgroundColor = [UIColor colorWithRed:0.523 green:0.897 blue:0.451 alpha:1];
                }
                else if(selectedIndex == 1)
                {
                    self.view.backgroundColor = [UIColor colorWithRed:0.223 green:0.597 blue:0.751 alpha:1];
                }
                else if(selectedIndex == 2)
                {
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

@end
