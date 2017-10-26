//
//  JHPenetrableWindow.m
//  Demo
//
//  Created by JasonHu on 2017/10/22.
//  Copyright © 2017年 JasonHu. All rights reserved.
//

#import "JHPenetrableWindow.h"

@implementation JHPenetrableWindow

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    UIView *resultView = [super hitTest:point withEvent:event];
    
    if (resultView == self && self.unpenetrable == NO) {
        return nil;
    }
    
    return resultView;
}

@end
