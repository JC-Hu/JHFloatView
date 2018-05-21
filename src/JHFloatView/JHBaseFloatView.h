//
//  JHBaseFloatView.h
//  Demo
//
//  Created by JasonHu on 2017/10/21.
//  Copyright © 2017年 JasonHu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JHPenetrableWindow.h"

@interface JHBaseFloatView : UIView

@property (nonatomic, weak) UIView *boundaryView;

- (void)setDisablePanGR:(BOOL)disablePanGR;


@property (nonatomic, strong) JHPenetrableWindow *floatWindow;

- (void)show;
- (void)dismiss;



@end
