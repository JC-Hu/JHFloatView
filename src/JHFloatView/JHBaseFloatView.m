//
//  JHBaseFloatView.m
//  Demo
//
//  Created by JasonHu on 2017/10/21.
//  Copyright © 2017年 JasonHu. All rights reserved.
//

#import "JHBaseFloatView.h"
#import "UIView+JHFCShortcut.h"

@interface JHBaseFloatView ()

@property (nonatomic, strong) UIPanGestureRecognizer *panGR;

@end;


@implementation JHBaseFloatView


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        
        self.panGR = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGRAction:)];
        
        [self addGestureRecognizer:self.panGR];
        
        
    }
    
    return self;
}

- (void)show
{
    
    UIWindow *keyWindow = [[UIApplication sharedApplication] keyWindow];
    
    UIView *rootView = keyWindow.rootViewController.view;
    
    if (!self.boundaryView) {
        self.boundaryView = rootView;
    }
    
    JHPenetrableWindow *window = [[JHPenetrableWindow alloc] initWithFrame:keyWindow.bounds];
    
    window.windowLevel = UIWindowLevelStatusBar + 1;
    window.hidden = NO;
    
    [window addSubview:self];
    
    self.floatWindow = window;
    
}

- (void)dismiss
{
    [self removeFromSuperview];
    [self.floatWindow resignKeyWindow];
    self.floatWindow = nil;
}


- (void)panGRAction:(UIPanGestureRecognizer *)sender
{
    
    CGPoint point = [sender translationInView:sender.view];
    
    self.x += point.x;
    self.y += point.y;
    
    // 限制边界
    CGPoint center = [self.boundaryView convertPoint:self.center fromView:self.superview];
    if (center.x < self.boundaryView.bounds.origin.x || center.x > CGRectGetMaxX(self.boundaryView.bounds)) {
        // x出边界的情况
        self.x -= point.x;
    }
    
    if (center.y < self.boundaryView.bounds.origin.y || center.y > CGRectGetMaxY(self.boundaryView.bounds)) {
        // y出边界的情况
        self.y -= point.y;
    }
    
    [sender setTranslation:CGPointMake(0, 0) inView:sender.view];
    
}


- (void)setDisablePanGR:(BOOL)disablePanGR
{
    self.panGR.enabled = disablePanGR;
}


@end
