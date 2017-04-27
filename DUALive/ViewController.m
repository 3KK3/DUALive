//
//  ViewController.m
//  DUALive
//
//  Created by Mengmin Duan on 2017/4/26.
//  Copyright © 2017年 Mengmin Duan. All rights reserved.
//

#import "ViewController.h"
#import "DUAAudioCapture.h"
#import "DUAVideoCapture.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray *colorArray;

@end

@implementation ViewController

DUAVideoCapture *videoCapture;
DUAAudioCapture *audioCapture;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    videoCapture = [DUAVideoCapture new];
    audioCapture = [DUAAudioCapture new];
    self.colorArray = [NSMutableArray arrayWithObjects:[UIColor orangeColor],
                       [UIColor redColor],
                       [UIColor yellowColor],
                       [UIColor greenColor],
                       [UIColor purpleColor],
                       nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)onStartClick:(id)sender
{
    [videoCapture startVideoCapture];
    //[audioCapture startAudioCapture];
}

- (IBAction)onStopClick:(id)sender
{
    [videoCapture stopVideoCapture];
    //[audioCapture stopAudioCapture];
}

- (IBAction)onColorClick:(id)sender
{
    static int i = 0;
    self.view.backgroundColor = (UIColor *)[self.colorArray objectAtIndex:i];
    i++;
    if (i == self.colorArray.count) {
        i = 0;
    }
}

@end
