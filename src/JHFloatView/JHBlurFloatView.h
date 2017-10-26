//
//  JHBlurFloatView.h
//  Demo
//
//  Created by JasonHu on 2017/10/24.
//  Copyright © 2017年 JasonHu. All rights reserved.
//

#import "JHBaseFloatView.h"

@interface JHBlurFloatView : JHBaseFloatView

// subviews: [blurContentView, effectView, clearContentView]

@property (nonatomic, readonly, strong) UIView *clearContentView;
@property (nonatomic, readonly, strong) UIView *blurContentView;
@property (nonatomic, readonly, strong) UIVisualEffectView *effectView;

@property (nonatomic, assign) BOOL blurEffect;

@end
