//
//  ViewController.m
//  SUAdvancePlayer
//
//  Created by fanghe on 17/9/15.
//  Copyright © 2017年 Sevenuncle. All rights reserved.
//

#import "ViewController.h"
#import "SUAdvancePlayer.h"
#import "SURange.h"

@interface ViewController ()

@property (nonatomic, strong) SUAdvancePlayer *player;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];

    
    SURangePointer range1 = malloc(sizeof(SURange));
    range1->location = 0;
    range1->length   = 5;
    range1->next     = NULL;
    
    SURangePointer range2 = malloc(sizeof(SURange));
    range2->location = 6;
    range2->length   = 15;
    range2->next     = NULL;
    
    SURangePointer range3 = malloc(sizeof(SURange));
    range3->location = 2;
    range3->length   = 19;
    range3->next     = NULL;
    
    range1->next = range2;
    SURangePointer resx = getGapRanges(range1, range3);
    self.player = [[SUAdvancePlayer alloc] initPlayerWithURL:[NSURL URLWithString:@"http://vodg3ns8cfm.vod.126.net/vodg3ns8cfm/0S0r2IXc_75031_shd.mp4"]];
//    self.player.playerLayer.frame = self.view.bounds;
//    [self.view.layer addSublayer:self.player.playerLayer];
//    [self.player play];
//    
//    __weak typeof(self) weakSelf = self;
//    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [weakSelf.player seekToOffset:60 * 10];
//    });
//    
// 
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(10 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [weakSelf.player seekToOffset:60 * 20];
//    });
//    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(15 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [weakSelf.player seekToOffset:60 * 30];
//    });
//
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(20 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [weakSelf.player seekToOffset:60 * 50];
//    });
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
