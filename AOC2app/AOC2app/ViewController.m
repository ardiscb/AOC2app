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

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    burgerClass *burgerFood = [[burgerClass alloc] init];
    if(burgerFood != nil)
    {
        //display name of creature(unicorn) console.log  
        [burgerFood printName];
        [burgerFood printNumber];
        
    }
    
    saladClass *saladFood = [[saladClass alloc] init];
    if(saladFood != nil)
    {
        //display name of creature(unicorn) console.log
        [saladFood printName];
        [saladFood printNumber];
        
    }

    grilledChickenClass *chickenFood = [[grilledChickenClass alloc] init];
    if(chickenFood != nil)
    {
        //display name of creature(unicorn) console.log
        [chickenFood printName];
        [chickenFood printNumber];
        
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
