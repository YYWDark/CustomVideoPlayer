//
//  VideoDetailViewController.m
//  CustomVideoPlayer
//
//  Created by wyy on 2017/3/20.
//  Copyright © 2017年 wyy. All rights reserved.
//

#import "VideoDetailViewController.h"
#import "MMVideoPlayer.h"
@interface VideoDetailViewController () <MMVideoPlayerDelegate>
@property (nonatomic, strong) MMVideoPlayer *player;
@end

@implementation VideoDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.player = [[MMVideoPlayer alloc] initWithURL:self.mp4_url topViewStatus:MMTopViewDisplayStatus playerTime:_seekTime];
    self.player.view.frame = self.view.frame;
    self.player.delegate = self;
    [self.view addSubview:self.player.view];
}

- (void)dealloc {    
    [self.player stopPlaying];
    [self.player removeNotification];
     self.player = nil;
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}
#pragma mark - MMVideoPlayerDelegate
- (void)videoPlayerFinished:(MMVideoPlayer *)videoPlayer {
    NSLog(@"video is finished");
}

- (void)videoPlayerViewWillDismiss:(MMVideoPlayer *)videoPlayer {
    NSTimeInterval time = [self.player currentTimeOfPlayerItem];
    [self dismissViewControllerAnimated:YES completion:^{
        if (self.block) {
            self.block(time);
        }
    }];
}


@end