//
//  ViewController.h
//  image-detection
//
//  Created by YS on 6/21/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <opencv2/videoio/cap_ios.h>
using namespace cv;

@interface ViewController : UIViewController<CvVideoCameraDelegate> {
        CvVideoCamera *videoCamera;
}

@property (nonatomic, retain) CvVideoCamera *videoCamera;


@end

