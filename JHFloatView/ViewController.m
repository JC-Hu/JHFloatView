//
//  ViewController.m
//  JHFloatView
//
//  Created by JasonHu on 2017/10/26.
//  Copyright © 2017年 JasonHu. All rights reserved.
//

#import "ViewController.h"
#import "JHBlurFloatView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 20, 20)];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        JHBlurFloatView *floatView = [[JHBlurFloatView alloc] initWithFrame:CGRectMake(100, 100, 40, 40)];
        [floatView show];
        
        floatView.effectView.alpha = .95;
//        floatView.blurEffect = NO;
    });
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
