//
//  ViewController.m
//  FYPlayer
//
//  Created by apple on 16/6/20.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import "FYPlayer.h"

#define SCREENW [UIScreen mainScreen].bounds.size.width
#define SCREENH [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FYPlayer *meviesPlay = [[FYPlayer alloc]init];
    
    //    meviesPlay.backgroundColor = [UIColor orangeColor];
    
    meviesPlay.frame = CGRectMake(0, 100, SCREENW, SCREENW/16 *9 + 40);
    [self.view addSubview:meviesPlay];
    
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"song.mp4" withExtension:nil];
    [meviesPlay playVideoWithUrl:url];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
