//
//  Created by JC_Hu on 15/5/18.
//  Copyright (c) 2015年 JingchenHu. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface UIView (JHFCShortcut)
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGSize size;

@property CGFloat top;
@property CGFloat left;

@property CGFloat bottom;
@property CGFloat right;

@property (nonatomic, assign) CGPoint bottomLeft;
@property (nonatomic, assign) CGPoint bottomRight;
@property (nonatomic, assign) CGPoint topRight;

@property CGPoint origin;

@end
