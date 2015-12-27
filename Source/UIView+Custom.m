//
//  UIView+Custom.m
//
//  Created by 小王 on 14-8-17.
//  Copyright (c) 2014年 wang. All rights reserved.
//

#import "UIView+Custom.h"
#import "ThemeProperty.h"
@implementation UIView (Custom)

-(void)showBorderWithWidth:(float)width borderColor:(UIColor *)borderColor
{
    self.layer.borderWidth = width;
    self.layer.borderColor = borderColor.CGColor;
}

-(void)showBorderWithWidth:(float) width
{
    [self showBorderWithWidth:width borderColor:[ThemeProperty viewBorderColor]];
}

-(void)showBorderWithBorderColor:(UIColor *)borderColor
{
    [self showBorderWithWidth:[ThemeProperty viewBorderWidth] borderColor:borderColor];
}

-(void) showBorder
{
    [self showBorderWithWidth:[ThemeProperty viewBorderWidth] borderColor:[ThemeProperty viewBorderColor]];
}

-(void) showFilletWithCornerRadius:(float)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = YES;
}

-(void) showFillet
{
    [self showFilletWithCornerRadius:[ThemeProperty viewCornerRadius]];
}

-(void) showFilletAndBorder
{
    [self showFillet];
    [self showBorder];
}

-(void)removeSubviews
{
    NSArray *array = [self subviews];
    for (UIView *view in array) {
        [view removeFromSuperview];
    }
}
-(void)removeSubviewsWithTag:(NSInteger)tag
{
    NSArray *array = [self subviews];
    for (UIView *view in array) {
        if (view.tag == tag) {
            [view removeFromSuperview];
        }
        
    }
}

-(NSArray *)viewsWithTag:(NSInteger)tag
{
    NSMutableArray *views = [NSMutableArray new];
    NSArray *subviews = self.subviews;
    for (UIView *view in subviews) {
        if (view.tag == tag) {
            [views addObject:view];
        }
    }
    return views;
}

- (void)setX:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)x
{
    return self.frame.origin.x;
}

- (void)setY:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)y
{
    return self.frame.origin.y;
}

- (void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)width
{
    return self.frame.size.width;
}

- (void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)height
{
    return self.frame.size.height;
}

- (void)setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGSize)size
{
    return self.frame.size;
}

- (void)setOrigin:(CGPoint)origin
{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGPoint)origin
{
    return self.frame.origin;
}

@end
