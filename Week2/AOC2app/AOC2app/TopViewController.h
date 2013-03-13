//
//  TopViewController.h
//  AOC2app
//
//  Created by Courtney Ardis on 3/12/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol TopViewDelegate <NSObject>
@required
-(void)DidClose:(NSString*)nameString;

@end

@interface TopViewController : UIViewController <UITextFieldDelegate>
{
    IBOutlet UIButton *closeBtn;
//    id<TopViewDelegate> delegate;
}
//-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField;
-(IBAction)onClose:(id)sender;

//set delegate from outside of topview
@property (strong) id<TopViewDelegate> delegate;

@end


