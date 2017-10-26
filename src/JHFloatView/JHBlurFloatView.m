//
//  JHBlurFloatView.m
//  Demo
//
//  Created by JasonHu on 2017/10/24.
//  Copyright © 2017年 JasonHu. All rights reserved.
//

#import "JHBlurFloatView.h"
@interface JHBlurFloatView ()

@property (nonatomic, strong) UIView *clearContentView;
@property (nonatomic, strong) UIVisualEffectView *effectView;
@property (nonatomic, strong) UIView *blurContentView;

@end

@implementation JHBlurFloatView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        
        [self addSubview:self.blurContentView];
        [self addSubview:self.effectView];
        [self addSubview:self.clearContentView];
        
        NSDictionary *views = @{@"blurContentView":self.blurContentView, @"effectView":self.effectView,@"clearContentView":self.clearContentView};
        
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[clearContentView]|" options:0 metrics:nil views:views]];
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[clearContentView]|" options:0 metrics:nil views:views]];
        
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.clearContentView.frame = self.bounds;
    self.blurContentView.frame = self.bounds;
    self.effectView.frame = self.bounds;
}

- (void)setBlurEffect:(BOOL)blurEffect
{
    _blurEffect = blurEffect;
    
    self.effectView.hidden = !_blurEffect;
}


#pragma mark - get

- (UIView *)clearContentView
{
    if (!_clearContentView) {
        _clearContentView = [[UIView alloc] initWithFrame:CGRectZero];
    }
    return _clearContentView;
}
- (UIView *)blurContentView
{
    if (!_blurContentView) {
        _blurContentView = [[UIView alloc] initWithFrame:CGRectZero];
    }
    return _blurContentView;
}

- (UIVisualEffectView *)effectView
{
    if (!_effectView) {
        
        
        UIBlurEffect *blur = [UIBlurEffect effectWithStyle:UIBlurEffectStyleDark];
        _effectView = [[UIVisualEffectView alloc] initWithEffect:blur];
    }
    return _effectView;
}

@end
