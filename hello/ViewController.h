//
//  ViewController.h
//  hello
//
//  Created by Amo on 15/5/1.
//  Copyright (c) 2015年 Amo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "mCustomTextField.h"

@interface ViewController : UIViewController<UITextFieldDelegate>
{
    UILabel* lable;
    UITextField* textField;
    UIButton* button;
}

@property(nonatomic,retain) UILabel* label;
@property(nonatomic,retain) UITextField* textField;
@property(nonatomic,retain) UIButton* button;

- (void)sayHello:(id)sender;
@end

