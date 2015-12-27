//
//  ThemeProperty.m
//
//  Created by King-ChenXu on 14-10-13.
//  Copyright (c) 2014年 KK. All rights reserved.
//

#import "ThemeProperty.h"

@implementation ThemeProperty

+(UIFont *) fontSmall
{
    return [UIFont systemFontOfSize:15];
}
+(UIFont *) fontNormal
{
    return [UIFont systemFontOfSize:18];
}
+(UIFont *) fontLarge
{
    return [UIFont systemFontOfSize:21];
}


+(UIColor *) colorTextLight
{
    return UICOLOR_MAKE_RGB(174, 174, 174);
}
+(UIColor *) colorTextDark
{
    return UICOLOR_MAKE_RGB(132, 132, 132);
}
+(UIColor *) colorTextDarkDark
{
    return UICOLOR_MAKE_RGB(50, 50, 50);
}

+(UIColor *)colorLine
{
    return UICOLOR_MAKE_RGB(228, 228, 228);
}

+(UIColor *) navigationBarTitleColor
{
    return UICOLOR_MAKE_RGB(215,215,215);
}

+(UIColor *) backgroundColor
{
    return UICOLOR_MAKE_RGB(244,244,244);
}


+(NSString *) navigationBarBackImageName
{
    return @"back";
}

+(UIFont *) navigationBarTitleFont
{
    return [UIFont boldSystemFontOfSize:21];
}

+(UIColor *) viewBorderColor
{
    return [UIColor whiteColor];
}

+(float) viewBorderWidth
{
    return 1;
}

+(float) viewCornerRadius
{
    return 5;
}

+(UIImage *)placeholderImageObj
{
    return [UIImage imageNamed:[self placeholderImageName]];
}

+(NSString *)placeholderImageName
{
    return @"placeholder";
}

+(UIInterfaceOrientationMask)interfaceOrientation
{
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        return UIInterfaceOrientationMaskLandscapeLeft | UIInterfaceOrientationMaskLandscapeRight;
    }
    
    return UIInterfaceOrientationMaskPortrait;
}

@end
