//
//  DUAVideoCapture.h
//  DUALive
//
//  Created by Mengmin Duan on 2017/4/26.
//  Copyright © 2017年 Mengmin Duan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol DUAVideoCaptureDelegate <NSObject>
@required
- (void)videoCaptureOutput:(CVPixelBufferRef)pixcelBuffer;

@end
@interface DUAVideoCapture : NSObject

@property (nonatomic, weak) id<DUAVideoCaptureDelegate> delegate;
@property (nonatomic, assign) BOOL isRunning;



@end
