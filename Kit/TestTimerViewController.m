//
//  TestTimerViewController.m
//  Kit
//
//  Created by LTF on 2020/3/30.
//  Copyright © 2020 ltf. All rights reserved.
//

#import "TestTimerViewController.h"
#import "NSTimer+WeakTimer.h"

@interface TestTimerViewController ()

@property (nonatomic, strong) NSTimer *timer;

@end

@implementation TestTimerViewController

- (void)dealloc {
    NSLog(@"TestTimerViewController dealoc");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.timer = [NSTimer weakTimerWithTimeInterval:1 target:self selector:@selector(timerRepeat:) userInfo:@{@"key": @"value"} repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
    
//    [NSTimer scheduledWeakTimerWithTimeInterval:1 target:self selector:@selector(timerRepeat:) userInfo:nil repeats:YES];
}

- (void)timerRepeat:(id)sendor {
    NSLog(@"sendor: %@", sendor);
}

@end
