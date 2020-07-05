//
//  ViewController.m
//  objc_msgSend
//
//  Created by xiekunpeng on 2020/7/2.
//  Copyright © 2020 xboker. All rights reserved.
//

#import "ViewController.h"
#import "ViewController1.h"
#import "ViewController2.h"
#import "ViewController3.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


///消息发送
- (IBAction)case1:(id)sender {
    ViewController1 *v = [[ViewController1 alloc] init];
    [self.navigationController pushViewController:v animated:YES];
}

///动态解析
- (IBAction)case2:(id)sender {
    ViewController2 *v = [[ViewController2 alloc] init];
      [self.navigationController pushViewController:v animated:YES];
}

///消息转发
- (IBAction)case3:(id)sender {
    ViewController3 *v = [[ViewController3 alloc] init];
      [self.navigationController pushViewController:v animated:YES];
}



@end
