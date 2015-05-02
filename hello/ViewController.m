//
//  ViewController.m
//  hello
//
//  Created by Amo on 15/5/1.
//  Copyright (c) 2015年 Amo. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

@synthesize label;
@synthesize textField;
@synthesize button;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    label = [[UILabel alloc]initWithFrame:CGRectMake(60, 60, 250, 200)];
    label.backgroundColor = [self.view backgroundColor];
    label.text = @"hello";
    label.font = [UIFont fontWithName:@"Arial" size:30];
    label.lineBreakMode = UILineBreakModeWordWrap;
    label.numberOfLines = 0;
    label.textAlignment = UITextAlignmentCenter;
    label.adjustsFontSizeToFitWidth = YES;
                  
   // CGSize size = [label.text sizeWithFont:label.font constrainedToSize:self.view.bounds.size lineBreakMode:label.lineBreakMode];
    //CGRect rect = label.frame;
    //rect.size.height = size.height;
    //label.frame = rect;
    [self.view addSubview:label];
    
    textField.delegate = self;
    
    self.textField = [[UITextField alloc]initWithFrame:CGRectMake(60, 229, 250, 40)];
    textField.placeholder = @"please enter";
    textField.borderStyle = UITextBorderStyleNone;
    textField.clearButtonMode = UITextFieldViewModeWhileEditing;
    //textField.background = [UIColor whiteColor];
    textField.background = [UIImage imageNamed:@"textfield.png"];
    [self.view addSubview:textField];
    
    self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setFrame:CGRectMake(60, 280, 72, 31)];
    [button addTarget:self action:@selector(sayHello:)forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"press" forState:UIControlStateNormal];
    [self.view addSubview:button];
    
}

- (void)sayHello:(id)sender{
    NSString* str = textField.text;
    NSString* message = [[NSString alloc] initWithFormat:@"hello %@",str ];
    label.text = message;
    [textField resignFirstResponder];
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [textField resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
