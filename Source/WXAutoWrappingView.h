//
//  WXAutoWrappingView.h
//
//  Created by King-ChenXu on 14/11/12.
//  Copyright (c) 2014年 wang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WXAutoWrappingView : UIView

@property (nonatomic,assign) CGFloat lineSpacing;
@property (nonatomic,assign) CGFloat viewSpacing;
@property (nonatomic,assign) UIEdgeInsets contentInset;
@property (nonatomic,assign) CGFloat startLayoutOffsetX;
@property (nonatomic,strong) NSArray *views;

@property (nonatomic,assign) BOOL useIntrinsicContentSize;

-(void)addSubviewFromArray:(NSArray *)views;

@end
