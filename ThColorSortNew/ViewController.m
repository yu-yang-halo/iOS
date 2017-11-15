//
//  ViewController.m
//  ThColorSortNew
//
//  Created by honghua cai on 2017/11/12.
//  Copyright © 2017年 yu yang. All rights reserved.
//

#import "ViewController.h"
#import "TopManager.h"
#import "MiddleManager.h"
#import "BottomManager.h"
#import "LoginUI.h"
@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [_middleView setUserInteractionEnabled:YES];
    [[TopManager shareInstance] attachView:_topView];
    
    [[MiddleManager shareInstance] attachView:_middleView];
    
    [[BottomManager shareInstance] attachView:_bottomView];
    
    
    [[MiddleManager shareInstance] attachObserver:[TopManager shareInstance]];
    
    [[MiddleManager shareInstance] attachObserver:[BottomManager shareInstance]];
    
    
    [[MiddleManager shareInstance] changeUi:[LoginUI class]];
    
    
    
}

-(void)viewDidAppear:(BOOL)animated{
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)click:(id)sender {
    NSLog(@"........");
}
@end
