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


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
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
    
    //LABELS
    burgerLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 300.0f, 45.0f)];
    if(burgerLabel != nil)
    {
        burgerLabel.text = [NSString stringWithFormat:@"Your burger has %d patties at $%d per patty", [burgerDetails numPatties], [burgerDetails pricePerPatty]];
        burgerLabel.numberOfLines = 2;
//        burgerLabel.lineBreakMode = NSLineBreakByWordWrapping;
    }
    //BURGER custom
    burgerCustom = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 60.0f, 300.0f, 45.0f)];
    if(burgerCustom != nil)
    {
        burgerCustom.text = [NSString stringWithFormat:@"It cost you $%d. %@", [burgerDetails total], [burgerDetails advice]];
        burgerCustom.numberOfLines = 3;
    }
    
    saladLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 110.0f, 300.0f, 45.0f)];
    if(saladLabel != nil)
    {
        saladLabel.text = [NSString stringWithFormat:@"I hope you enjoyed your salad with %d croutons and %d cup of dressing.", [saladDetails numCroutons], [saladDetails amtDressingInCups]];
        saladLabel.numberOfLines = 2;
    }
    //SALAD custom
    saladCustom = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 160.0f, 300.0f, 25.0f)];
    if(saladCustom != nil)
    {
        saladCustom.text = [NSString stringWithFormat:@"It cost you $%d. %@", [saladDetails total], [saladDetails advice]];
        saladCustom.numberOfLines = 2;
    }
    
    gChickenLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 190.0f, 300.0f, 45.0f)];
    if(gChickenLabel != nil)
    {
        gChickenLabel.text = [NSString stringWithFormat:@"I hope your %d piece %d ounce grilled chicken was delicious.", [gChickenDetails numPiecesOfChicken], [gChickenDetails ounces]];
        gChickenLabel.numberOfLines = 2;
    }
    //GRILLED CHICKEN custom
    gChickenCustom = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 240.0f, 300.0f, 45.0f)];
    if(gChickenCustom != nil)
    {
        gChickenCustom.text = [NSString stringWithFormat:@"It cost you $%d. %@", [gChickenDetails total], [gChickenDetails advice]];
        gChickenCustom.numberOfLines = 2;
    }
    
    //add labels to view
    [self.view addSubview:burgerLabel];
    [self.view addSubview:burgerCustom];
    [self.view addSubview:saladLabel];
    [self.view addSubview:saladCustom];
    [self.view addSubview:gChickenLabel];
    [self.view addSubview:gChickenCustom];
    //END LABELS
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
 
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
