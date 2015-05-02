//
//  mCustomTextField.m
//  hello
//
//  Created by Amo on 15/5/2.
//  Copyright (c) 2015年 Amo. All rights reserved.
//

#import "mCustomTextField.h"

@implementation mCustomTextField

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self){
        
    }
    return self;
}

- (CGRect)textRectForBounds:(CGRect)bounds
{
    return CGRectInset(bounds, 5, 0);
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
    return CGRectInset(bounds, 5, 0);
}

- (void)drawRect:(CGRect)rect
{
    UIImage * backgroundImage = [[UIImage imageNamed:@"textfield.png"]resizableImageWithCapInsets:UIEdgeInsetsMake(15.0, 5.0, 15.0, 5.0)];
    [backgroundImage drawInRect:[self bounds]];
}
@end
