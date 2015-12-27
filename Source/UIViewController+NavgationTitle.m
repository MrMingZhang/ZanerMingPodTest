//
//  UIViewController+NavgationTitle.m
//
//  Created by King-ChenXu on 14-9-4.
//  Copyright (c) 2014年 wang. All rights reserved.
//

#import "UIViewController+NavgationTitle.h"

@implementation UIViewController (NavgationTitle)

- (void)setNavigationBarTitle:(NSString *)title
{
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 150, 44)];
    titleLabel.text = title;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.backgroundColor = [UIColor clearColor];
    titleLabel.textColor = [ThemeProperty navigationBarTitleColor];
    titleLabel.font = [ThemeProperty navigationBarTitleFont];
    [titleLabel sizeToFit];
    self.navigationItem.titleView = titleLabel;
    self.navigationItem.title = title;
}

@end
