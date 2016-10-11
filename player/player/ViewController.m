//
//  ViewController.m
//  player
//
//  Created by CHENZEQIANG on 09/10/2016.
//  Copyright © 2016 CHENZEQIANG. All rights reserved.
//

#import "ViewController.h"
#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)playButton:(id)sender {
    

    NSURL* url = [[NSBundle mainBundle]URLForResource:@"test" withExtension:@"mp4"];
  
    AVPlayer* player = [AVPlayer playerWithURL:url];
    
    AVPlayerViewController* controller = [[AVPlayerViewController alloc]init];
    controller.player = player;
    
   [self presentViewController:controller animated:YES completion:^{
       [player play];
    }];
    
    
}

@end
