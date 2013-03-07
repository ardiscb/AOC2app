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
        
        //subClass class is using setAttributes method without having it in the subClass.h or subClass.m file
        //every sub class of baseClass can use the setAttributes function as well as setting its details/variables
        //don't use - define details in class (ie: subClass, UnicornCreature)
//        [unicornCreature setAttributes:CREATURETYPE_UNICORN name:@"Unicorn" isMythical:true];
        
//        [unicornCreature setAttributes];
        
        //can't do this directly
//        baseCreature->mythical = true;
    }
//    baseClass *test = [[baseClass alloc] init];
//    //instance method
//    [test setTemp:4];
//    
//    //static method
//    [baseClass printValue:3];
    
//    baseClass *base = [[baseClass alloc] init];
//    if(base != nil)
//    {
//        NSLog(@"temp=%d, nameString=%@", base->temp, base->nameString);
//        //arrow operator
//        base->temp = 45;
//        base->nameString = @"in viewController";
//        NSLog(@"temp=%d, nameString=%@", base->temp, base->nameString);
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
