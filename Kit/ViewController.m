//
//  ViewController.m
//  Kit
//
//  Created by LTF on 2020/3/30.
//  Copyright © 2020 ltf. All rights reserved.
//

#import "ViewController.h"
#import "TestTimerViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self.navigationController pushViewController:[TestTimerViewController new] animated:YES];

}


@end
