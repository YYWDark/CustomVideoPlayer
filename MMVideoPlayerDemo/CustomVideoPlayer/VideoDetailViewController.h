//
//  VideoDetailViewController.h
//  CustomVideoPlayer
//
//  Created by wyy on 2017/3/20.
//  Copyright © 2017年 wyy. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^Block)(NSTimeInterval seekTime);
@interface VideoDetailViewController : UIViewController
@property (nonatomic, strong) NSURL *mp4_url;      //视频url
@property (nonatomic, assign) NSTimeInterval seekTime;
@property (nonatomic, copy) Block block;
@end
