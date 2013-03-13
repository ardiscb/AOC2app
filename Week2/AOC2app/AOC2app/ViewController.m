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

#define BUTTON_SEVEN 7
@interface ViewController ()

@end

@implementation ViewController

//onClick event for all buttons on main ViewController
-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if(button != nil)
    {
        if(button.tag == 0)
        {
            burgerBtn.enabled = false;
            burgerBtn.highlighted = true;
            saladBtn.enabled = true;
            gChickBtn.enabled = true;
            NSLog(@"you pressed burger");
        }
        else if(button.tag ==1)
        {
            burgerBtn.enabled = true;
            saladBtn.enabled = false;
            gChickBtn.enabled = true;
            NSLog(@"you pressed salad");
            
        }
        else if(button.tag ==2)
        {
            burgerBtn.enabled = true;
            saladBtn.enabled = true;
            gChickBtn.enabled = false;
            NSLog(@"you pressed grilled chicken");
            
        }
        else if(button.tag == 3)
        {
            NSLog(@"you clicked in the text field ");
            
        }
        else if(button.tag == 4)
        {
            NSLog(@"you pressed calculate");
            
        }
        else if(button.tag == 7)
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
    UIStepper *stepControl = (UIStepper*) sender;
    if(stepControl != nil)
    {
        int currentValue = stepControl.value;
        result.text = [NSString stringWithFormat:@"Step value = %d", currentValue];
        NSLog(@"Step value = %d", currentValue);
    }
}
- (void)viewDidLoad
{
    //create info button
    infoBtn = [UIButton buttonWithType:UIButtonTypeInfoLight];
    infoBtn.frame = CGRectMake(15.0f, 410.0f, 20.0f, 20.0f);
    [infoBtn addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    infoBtn.tag = BUTTON_SEVEN;
    [self.view addSubview:infoBtn];

    
    //create burger
//    baseClass *burger = [FoodFactory GetFood:BURGER];
    
    burgerClass *burgerDetails = (burgerClass*)[FoodFactory createFood:BURGER];
    //set number of patties
    [burgerDetails setNumPatties:3];
    
    //create salad
//    baseClass *salad = [FoodFactory GetFood:SALAD];
    saladClass *saladDetails = (saladClass*)[FoodFactory createFood:SALAD];
    //set numCroutons and amtDressingInCups
    [saladDetails setNumCroutons:4];
    [saladDetails setAmtDressingInCups:1];
    
    //create grilled chicken
//    baseClass *gChicken = [FoodFactory GetFood:GRILLEDCHICKEN];
    grilledChickenClass *gChickenDetails = (grilledChickenClass*)[FoodFactory createFood:GRILLEDCHICKEN];
    //set ounces of chicken
    [gChickenDetails setOunces:8];

    
//  instance of factory - no need for this when using a class method, like the ones above
//  FoodFactory *foodFactory = [[FoodFactory alloc] init];
    
    if(burgerDetails != nil)
    {
        //print name of food(burger) by using the foodType and a factory
        //baseClass *burger = [foodFactory GetFood:BURGER];
        [burgerDetails printNumber];
        
        //set burger advice
        NSString *burgerAdvice = @"Advice: Eat less burgers";
        [burgerDetails setAdvice:burgerAdvice];
        NSLog(@"%@", [burgerDetails advice]);
        
        [burgerDetails total];
        
        //calculate and log
        [burgerDetails calculatePricePerWeek];
    }
    if(saladDetails != nil)
    {
        //print name of food(salad) by using the foodType and a factory
//        baseClass *salad = [foodFactory GetFood:SALAD];
        [saladDetails printNumber];
        
        //set salad advice
        NSString *saladAdvice = @"Advice: Eat more salads!";
        [saladDetails setAdvice:saladAdvice];
        NSLog(@"%@", [saladDetails advice]);
        
        [saladDetails total];
        //calculate and log
        [saladDetails calculatePricePerWeek];
    }
    if(gChickenDetails != nil)
    {
//        baseClass *gChicken = [foodFactory GetFood:GRILLEDCHICKEN];
        [gChickenDetails printNumber];
        
        //set grilled chicken advice
        NSString *gChickenAdvice = @"Advice: Eat a moderate amount of chicken. :)";
        [gChickenDetails setAdvice:gChickenAdvice];
        NSLog(@"%@", [gChickenDetails advice]);
        
        [gChickenDetails total];
        //calculate and log
        [gChickenDetails calculatePricePerWeek];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
 
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
