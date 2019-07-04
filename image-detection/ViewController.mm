//
//  ViewController.m
//  image-detection
//
//  Created by YS on 6/21/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (weak, nonatomic) IBOutlet UIButton *startButton;

- (IBAction)startButton:(id)sender;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blackColor];
    
    [self.view addSubview:_imageView];
    [self.view addSubview:_startButton];
    
//    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hello" message:@"Welcome to Open CV" delegate:self cancelButtonTitle:@"Continue" otherButtonTitles:nil];
//
//    [alert show];
    
    self.videoCamera = [[CvVideoCamera alloc] initWithParentView:_imageView];
    self.videoCamera.delegate = self;
    self.videoCamera.defaultAVCaptureDevicePosition = AVCaptureDevicePositionBack;
    self.videoCamera.defaultAVCaptureSessionPreset = AVCaptureSessionPreset1280x720;
    self.videoCamera.defaultAVCaptureVideoOrientation = AVCaptureVideoOrientationPortrait;
    self.videoCamera.defaultFPS = 30;
    self.videoCamera.grayscaleMode = NO;

}

#pragma mark - Protocol CvVideoCameraDelegate

#ifdef __cplusplus
- (void)processImage:(cv::Mat &)image {
    // Do some OpenCV stuff with the image
//    Mat image_copy;
//    cvtColor(image, image_copy, COLOR_BGRA2RGB);
    
    // Invert image
//    bitwise_not(image_copy, image_copy);
//    cvtColor(image_copy, image, COLOR_BGR2BGRA);
}
#endif


- (IBAction)startButton:(id)sender {
    [self.videoCamera start];
}

@end
