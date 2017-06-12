//
//  CustomView.m
//  Shadow
//
//  Created by Oreal51 on 2017/6/12.
//  Copyright © 2017年 Oreal51. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
 */

- (void)drawRect:(CGRect)rect {
//    CGColorSpaceRef colorspace = CGColorSpaceCreateDeviceRGB();
    //获取上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    //阴影颜色
    CGColorRef shadow = [UIColor blackColor].CGColor;
    //阴影偏移量
    CGSize shadowOffset = CGSizeMake(3, 3);
    //阴影模糊度
    CGFloat shadowBlurRadius = 5;
    //图像路径
    CGRect pathRect = CGRectInset(self.bounds, 20, 20);
    //描述路径
    UIBezierPath *rectanglePath = [UIBezierPath bezierPathWithRoundedRect:pathRect cornerRadius:4];
    
//    UIColor *gradientStartColor = [UIColor colorWithRed:0.0 green:0.2 blue:0.7 alpha:1];
//    UIColor *gradientEndColor = [UIColor colorWithRed:0.3 green:0.4 blue:0.0 alpha:1];
//
//    NSArray *gradientColors = [NSArray arrayWithObjects:(id)gradientStartColor,(id)gradientEndColor, nil];
//    CGFloat gradientLocations[] ={1,1};
//    CGGradientRef gradient = CGGradientCreateWithColors(colorspace, (CFArrayRef)gradientColors, gradientLocations);
    
    //参数：路径，阴影偏移量，阴影模糊度，图像的填充颜色
    CGContextSetShadowWithColor(context, shadowOffset, shadowBlurRadius, shadow);
    
    //设置填充色
//    CGPoint topPoint = CGPointMake(self.bounds.size.width/2, 20);
//    CGPoint bottomPoint = CGPointMake(self.bounds.size.width/2, self.bounds.size.height-20);
    
    
    //将当前上下文保存在栈中
    CGContextSaveGState(context);
    
//    [rectanglePath fill];
//    CGContextDrawLinearGradient(context, gradient, bottomPoint, topPoint, 0);
    
    [[UIColor lightGrayColor]setFill];
    [rectanglePath fill];
    //显示路径
    CGContextRestoreGState(context);
    
//    CGGradientRelease(gradient);
//    CGColorSpaceRelease(colorspace);
}

@end
