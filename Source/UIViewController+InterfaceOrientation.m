//
//  UIViewController+InterfaceOrientation.m
//
//  Created by King-ChenXu on 14-9-8.
//  Copyright (c) 2014年 wang. All rights reserved.
//

#import "UIViewController+InterfaceOrientation.h"
#import "ThemeProperty.h"
@implementation UIViewController (InterfaceOrientation)


-(NSUInteger)supportedInterfaceOrientations
{
    return [ThemeProperty interfaceOrientation];
}

- (BOOL)shouldAutorotate
{
    return YES;
}

@end
