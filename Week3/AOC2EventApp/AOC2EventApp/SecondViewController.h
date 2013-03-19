//
//  SecondViewController.h
//  AOC2EventApp
//
//  Created by Courtney Ardis on 3/18/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol SecondViewDelegate <NSObject>
@required
-(void)DidSave:(NSString*)titleEvent;
@end

@interface SecondViewController : UIViewController <UITextFieldDelegate>
{
    IBOutlet UIButton *saveBtn;
    
    id<SecondViewDelegate> delegate;
}

-(IBAction)onClose:(id)sender;

//set delegate from outside of topview
@property (strong) id<SecondViewDelegate> delegate;
@end
