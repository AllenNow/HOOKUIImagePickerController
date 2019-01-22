//
//  ViewController.m
//  OpenPhotos
//
//  Created by Allen Gao on 2019/1/17.
//  Copyright © 2019 Allen Gao. All rights reserved.
//

#import "ViewController.h"
#import "UIImagePickerController+custom.h"
#import <WebKit/WebKit.h>

@interface ViewController ()<WKUIDelegate,WKNavigationDelegate>
@property (weak, nonatomic) IBOutlet WKWebView *webView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"index.html" ofType:nil];
    NSURL *fileURL = [NSURL fileURLWithPath:path];
    [self.webView loadRequest:[NSURLRequest requestWithURL:fileURL]];
    [UIImagePickerController hookDelegate];
}




@end
