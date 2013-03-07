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
    
    //instance of factory
    FoodFactory *foodFactory = [[FoodFactory alloc] init];
    if(foodFactory != nil)
    {
        //print name of food(burger) by using the foodType and a factory
        baseClass *burger = [foodFactory GetFood:0];
        [burger printNameByType];
        [burger printNumber];
        
        //print name of food(salad) by using the foodType and a factory
        baseClass *salad = [foodFactory GetFood:1];
        [salad printNameByType];
        [salad printNumber];
        
        baseClass *gChicken = [foodFactory GetFood:2];
        [gChicken printNameByType];
        [gChicken printNumber];
    }
    
//    burgerClass *burgerFood = [[burgerClass alloc] init];
//    if(burgerFood != nil)
//    {
//        //display name of food console.log  
//        [burgerFood printName];
//        [burgerFood printNumber];
//        
//    }
//    
//    saladClass *saladFood = [[saladClass alloc] init];
//    if(saladFood != nil)
//    {
//        //display name of food console.log
//        [saladFood printName];
//        [saladFood printNumber];
//        
//    }
//
//    grilledChickenClass *chickenFood = [[grilledChickenClass alloc] init];
//    if(chickenFood != nil)
//    {
//        //display name of food console.log
//        [chickenFood printName];
//        [chickenFood printNumber];
//        
//    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
 
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
