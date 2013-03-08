//
//  ViewController.m
//  AOC2app
//
//  Created by Courtney Ardis on 3/4/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "ViewController.h"
//import class
#import "baseClass.h"
//import burgerClass that is the child of baseClass
#import "burgerClass.h"
//import saladClass - child of baseClass
#import "saladClass.h"
//import grilledChickenClass - child of baseClass
#import "grilledChickenClass.h"
//import FoodFactory - factory
#import "FoodFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    //LABELS
    
    //END LABELS
    
    //create burger   
    baseClass *burger = [FoodFactory GetFood:BURGER];
    burgerClass *burgerDetails = (burgerClass*)[FoodFactory createFood:BURGER];
    //set number of patties
    [burgerDetails setNumPatties:3];
    
    //create salad
    baseClass *salad = [FoodFactory GetFood:SALAD];
    
    //create grilled chicken
    baseClass *gChicken = [FoodFactory GetFood:GRILLEDCHICKEN];

    
//  instance of factory - no need for this when using a class method, like the ones above
//  FoodFactory *foodFactory = [[FoodFactory alloc] init];
    
    if(burger != nil)
    {
        //print name of food(burger) by using the foodType and a factory
//        baseClass *burger = [foodFactory GetFood:BURGER];
        [burger printNameByType];
        [burger printNumber];
        
        NSString *advice = @"This is the advice I give you: Eat less burgers and set a goal";
        [burger setAdvice:advice];
        NSLog(@"%@", [burger advice]);
        
        [burgerDetails total];
        
        //calculate and log
        [burgerDetails calculatePricePerWeek];
    }
    if(salad != nil)
    {
        //print name of food(salad) by using the foodType and a factory
//        baseClass *salad = [foodFactory GetFood:SALAD];
        [salad printNameByType];
        [salad printNumber];
    }
    if(gChicken != nil)
    {
//        baseClass *gChicken = [foodFactory GetFood:GRILLEDCHICKEN];
        [gChicken printNameByType];
        [gChicken printNumber];
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
