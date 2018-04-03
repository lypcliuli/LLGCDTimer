//
//  LLViewController.m
//  LLGCDTimer
//
//  Created by lypcliuli on 03/27/2018.
//  Copyright (c) 2018 lypcliuli. All rights reserved.
//

#import "LLViewController.h"
#import "LLGCDTimer.h"

@interface LLViewController ()

@end

@implementation LLViewController

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    // 使用方法 修改一下主干
    [LLGCDTimer llGCDTimer:10 repeat:YES interval:5 progress:^(NSInteger current) {
        NSLog(@"%zd", current);
    } endAction:^(NSInteger current) {
        // 倒计时结束
    }];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
