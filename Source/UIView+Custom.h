//
//  UIView+Custom.h
//
//  Created by 小王 on 14-8-17.
//  Copyright (c) 2014年 wang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Custom)

-(void)showBorderWithWidth:(float)width borderColor:(UIColor *)borderColor;
-(void)showBorderWithWidth:(float) width;
-(void)showBorderWithBorderColor:(UIColor *)borderColor;
-(void) showBorder;
-(void) showFilletWithCornerRadius:(float)cornerRadius;
-(void) showFillet;
-(void) showFilletAndBorder;

-(void) removeSubviews;
-(void) removeSubviewsWithTag:(NSInteger) tag;
-(NSArray *) viewsWithTag:(NSInteger)tag;

@property (assign, nonatomic) CGFloat x;
@property (assign, nonatomic) CGFloat y;
@property (assign, nonatomic) CGFloat width;
@property (assign, nonatomic) CGFloat height;
@property (assign, nonatomic) CGSize size;
@property (assign, nonatomic) CGPoint origin;

@end
