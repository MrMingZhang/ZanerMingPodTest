//
//  ThemeProperty.h
//
//  Created by King-ChenXu on 14-10-13.
//  Copyright (c) 2014年 KK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define UICOLOR_WITH_RGBINT(rgbInt) UICOLOR_WITH_RGBINT_A(rgbInt,1)
#define UICOLOR_WITH_RGBINT_A(rgbInt,a) [UIColor colorWithRed:((float)((rgbInt & 0xFF0000) >> 16))/255.0 green:((float)((rgbInt & 0xFF00) >> 8))/255.0 blue:((float)(rgbInt & 0xFF))/255.0 alpha:a]

#define isPad UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad
#define isPhone UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone

#define UICOLOR_MAKE_RGB(r,g,b) UICOLOR_MAKE_RGB_A(r,g,b,1)
#define UICOLOR_MAKE_RGB_A(r,g,b,a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]

#define DOCUMENT_DIR_MAKE(name) [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0] stringByAppendingString:name]
#define TOP_POINT(view) [NSValue valueWithCGPoint:CGPointMake(view.bounds.size.width / 2, (view.bounds.size.height / 2)/2)]

@interface ThemeProperty : NSObject

//字体大小
+(UIFont *) fontSmall;
+(UIFont *) fontNormal;
+(UIFont *) fontLarge;

//导航栏标题颜色
+(UIColor *) navigationBarTitleColor;
//导航栏标题字体
+(UIFont *) navigationBarTitleFont;

//字体颜色
+(UIColor *) colorTextLight;
+(UIColor *) colorTextDark;
+(UIColor *) colorTextDarkDark;
//分割线颜色
+(UIColor *) colorLine;
//默认背景色
+(UIColor *) backgroundColor;
//导航栏返回按钮图片
+(NSString *) navigationBarBackImageName;

//默认边框颜色
+(UIColor *) viewBorderColor;
//默认边框宽度
+(float) viewBorderWidth;
//默认圆角大小
+(float) viewCornerRadius;
//默认预览图图片
+(UIImage *)placeholderImageObj;
+(NSString *)placeholderImageName;

+(UIInterfaceOrientationMask)interfaceOrientation;

@end
