//
//  AVAsset+Extension.h
//  CustomVideoPlayer
//
//  Created by wyy on 2017/3/2.
//  Copyright © 2017年 wyy. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>

@interface AVAsset (Extension)
@property (nonatomic, strong, readonly) NSString *videoTitle;
@end
