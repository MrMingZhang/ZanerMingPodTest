//
//  WXAutoWrappingView.m
//
//  Created by King-ChenXu on 14/11/12.
//  Copyright (c) 2014年 wang. All rights reserved.
//

#import "WXAutoWrappingView.h"
#import "UIView+Custom.h"
@implementation WXAutoWrappingView

-(instancetype)init
{
    self = [super init];
    if (self) {
        self.useIntrinsicContentSize = YES;
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.useIntrinsicContentSize = YES;
    }
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.useIntrinsicContentSize = YES;
    }
    return self;
}

-(void)setLineSpacing:(CGFloat)lineSpacing
{
    _lineSpacing = lineSpacing;
    [self invalidateIntrinsicContentSize];
}

-(void)setViewSpacing:(CGFloat)viewSpacing
{
    _viewSpacing = viewSpacing;
    [self invalidateIntrinsicContentSize];
}

-(void)setContentInset:(UIEdgeInsets)contentInset
{
    _contentInset = contentInset;
    [self invalidateIntrinsicContentSize];
}

-(void)setStartLayoutOffsetX:(CGFloat)startLayoutOffsetX
{
    _startLayoutOffsetX = startLayoutOffsetX;
    [self invalidateIntrinsicContentSize];
}

-(void)setViews:(NSArray *)views
{
    [self removeSubviews];
    _views = views;
    for (UIView *view in _views) {
        [self addSubview:view];
    }
    [self invalidateIntrinsicContentSize];
}

-(void)addSubviewFromArray:(NSArray *)views
{
    for (UIView *view in views) {
        [self addSubview:view];
    }
    NSMutableArray *arr;
    if (self.views) {
        arr = [self.views mutableCopy];
    }else{
        arr = [NSMutableArray new];
    }
    
    [arr addObjectsFromArray:views];
    _views = arr;
    [self invalidateIntrinsicContentSize];
}

-(CGSize)intrinsicContentSize
{
    if (self.views.count == 0) {
        return self.bounds.size;
    }
    __block CGRect totalRect = CGRectNull;
    
    [self enumerateItemRectsForLayoutWidth:self.bounds.size.width usingBlock:^(CGRect itemRect) {
        totalRect = CGRectUnion(itemRect, totalRect);
    }];
    return CGSizeMake(totalRect.size.width + self.contentInset.left + self.contentInset.right, totalRect.size.height + self.contentInset.top + self.contentInset.bottom);
}


- (void)enumerateItemRectsForLayoutWidth:(CGFloat)layoutWidth usingBlock:(void (^)(CGRect itemRect))block
{
    
    
    CGFloat x = self.contentInset.left + self.startLayoutOffsetX, y = self.contentInset.top;
    CGFloat lineMaxHeight = 0;
    for (UIView *view in self.views) {
        CGSize viewSize = self.useIntrinsicContentSize ? view.intrinsicContentSize : view.frame.size;
        lineMaxHeight = MAX(lineMaxHeight, viewSize.height);
        layoutWidth = MAX(layoutWidth, viewSize.width);
        if (x > (layoutWidth - viewSize.width - self.contentInset.right)) {
            
            y += lineMaxHeight;
            lineMaxHeight = 0;
            y += self.lineSpacing;
            x = self.contentInset.left;
        }
        
        block((CGRect){{x, y}, viewSize});
        
        x += (viewSize.width + self.viewSpacing);
    }
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    BOOL wereEnabled = [UIView areAnimationsEnabled];
    [UIView setAnimationsEnabled:NO];
    
    NSEnumerator *subviewEnumerator = [self.views objectEnumerator];
    [self enumerateItemRectsForLayoutWidth:self.bounds.size.width usingBlock:^(CGRect itemRect) {
        UIView *subview = [subviewEnumerator nextObject];
        [subview setFrame:itemRect];
        [subview setNeedsLayout];
    }];
    
    [UIView setAnimationsEnabled:wereEnabled];
}


@end
