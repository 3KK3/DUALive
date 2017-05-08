//
//  DUAAudioCapture.h
//  DUALive
//
//  Created by Mengmin Duan on 2017/4/26.
//  Copyright © 2017年 Mengmin Duan. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@protocol DUAAudioCaptureDelegate <NSObject>

- (void)audioCaptureOutput:(CMSampleBufferRef)sampleBuffer;

@end
@interface DUAAudioCapture : NSObject

@property (nonatomic, weak) id<DUAAudioCaptureDelegate> delegate;

- (void)startAudioCapture;
- (void)stopAudioCapture;

@end