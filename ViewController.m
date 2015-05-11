//
//  ViewController.m
//  MultipleStyleChangeView
//
//  Created by  on 13-9-16.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

#define kDuration 0.6
@implementation ViewController
@synthesize blueView,greenView;
@synthesize typeID;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    
    //设置蓝色界面
    blueView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    self.blueView.image = [UIImage imageNamed:@"5.jpg"];
    [self.view addSubview:self.blueView];
    
    //设置绿色界面
    greenView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    self.greenView.image = [UIImage imageNamed:@"6.jpg"];
    [self.view addSubview:self.greenView];
    
    //设置下翻按钮
    UIButton *toBottomButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    toBottomButton.frame = CGRectMake(10, 20, 60, 30);
    [toBottomButton setTitle:@"下翻" forState:UIControlStateNormal];
    [toBottomButton addTarget:self action:@selector(toBottomButtonIsPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:toBottomButton];

    
    //设置上翻按钮
    UIButton *toTopButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    toTopButton.frame = CGRectMake(90, 20, 60, 30);
    [toTopButton setTitle:@"上翻" forState:UIControlStateNormal];
    [toTopButton addTarget:self action:@selector(toTopButtonIsPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:toTopButton];

    
    //设置左转按钮
    UIButton *toLeftButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    toLeftButton.frame = CGRectMake(170, 20, 60, 30);
    [toLeftButton setTitle:@"左转" forState:UIControlStateNormal];
    [toLeftButton addTarget:self action:@selector(toLeftButtonIsPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:toLeftButton];

    
    //设置右转按钮
    UIButton *toRightButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    toRightButton.frame = CGRectMake(250, 20, 60, 30);
    [toRightButton setTitle:@"左转" forState:UIControlStateNormal];
    [toRightButton addTarget:self action:@selector(toRightButtonIsPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:toRightButton];
    
    //设置淡化按钮
    UIButton *disappearButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    disappearButton.frame = CGRectMake(10, 60, 60, 30);
    [disappearButton setTitle:@"淡化" forState:UIControlStateNormal];
    [disappearButton addTarget:self action:@selector(disappearButtonIsPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:disappearButton];

    
    //设置推送按钮
    UIButton *pushButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    pushButton.frame = CGRectMake(90, 60, 60, 30);
    [pushButton setTitle:@"推送" forState:UIControlStateNormal];
    [pushButton addTarget:self action:@selector(pushButtonIsPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:pushButton];
    
    
    //设置揭开按钮
    UIButton *revealButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    revealButton.frame = CGRectMake(170, 60, 60, 30);
    [revealButton setTitle:@"揭开" forState:UIControlStateNormal];
    [revealButton addTarget:self action:@selector(revealButtonIsPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:revealButton];

    //设置覆盖按钮
    UIButton *coverButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    coverButton.frame = CGRectMake(250, 60, 60, 30);
    [coverButton setTitle:@"覆盖" forState:UIControlStateNormal];
    [coverButton addTarget:self action:@selector(coverButtonIsPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:coverButton];

    //设置立方体按钮
    UIButton *cubeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    cubeButton.frame = CGRectMake(10, 340, 60, 30);
    [cubeButton setTitle:@"立方体" forState:UIControlStateNormal];
    [cubeButton addTarget:self action:@selector(cubeButtonIsPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:cubeButton];

    //设置吸收按钮
    UIButton *suckEffectButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    suckEffectButton.frame = CGRectMake(90, 340, 60, 30);
    [suckEffectButton setTitle:@"回收" forState:UIControlStateNormal];
    [suckEffectButton addTarget:self action:@selector(suckEffectButtonIsPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:suckEffectButton];
    
    
    //设置翻转按钮
    UIButton *oglFlipButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    oglFlipButton.frame = CGRectMake(170, 340, 60, 30);
    [oglFlipButton setTitle:@"翻转" forState:UIControlStateNormal];
    [oglFlipButton addTarget:self action:@selector(oglFlipButtonIsPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:oglFlipButton];

    //设置波纹按钮
    UIButton *rippleEffectButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    rippleEffectButton.frame = CGRectMake(250, 340, 60, 30);
    [rippleEffectButton setTitle:@"波纹" forState:UIControlStateNormal];
    [rippleEffectButton addTarget:self action:@selector(rippleEffectButtonIsPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:rippleEffectButton];

    //设置翻页按钮
    UIButton *pageCurlButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    pageCurlButton.frame = CGRectMake(10, 380, 60, 30);
    [pageCurlButton setTitle:@"翻页" forState:UIControlStateNormal];
    [pageCurlButton addTarget:self action:@selector(pageCurlButtonIsPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:pageCurlButton];

    //设置反翻页按钮
    UIButton *pageUnCurlButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    pageUnCurlButton.frame = CGRectMake(90, 380, 60, 30);
    [pageUnCurlButton setTitle:@"反翻页" forState:UIControlStateNormal];
    [pageUnCurlButton addTarget:self action:@selector(pageUnCurlButtonIsPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:pageUnCurlButton];

    //设置镜头开按钮
    UIButton *cameraIrisHollowOpenButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    cameraIrisHollowOpenButton.frame = CGRectMake(170, 380, 60, 30);
    [cameraIrisHollowOpenButton setTitle:@"镜头开" forState:UIControlStateNormal];
    [cameraIrisHollowOpenButton addTarget:self action:@selector(cameraIrisHollowOpenButtonIsPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:cameraIrisHollowOpenButton];

    //设置镜头关按钮
    UIButton *cameraIrisHollowCloseButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    cameraIrisHollowCloseButton.frame = CGRectMake(250, 380, 60, 30);
    [cameraIrisHollowCloseButton setTitle:@"镜头关" forState:UIControlStateNormal];
    [cameraIrisHollowCloseButton addTarget:self action:@selector(cameraIrisHollowCloseButtonIsPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:cameraIrisHollowCloseButton];

    
    tag = 0;
    
    }

//响应下翻按钮
-(void)toBottomButtonIsPressed:(UIButton *)paramSender
{
    CATransition *animation = [CATransition animation];
    animation.delegate = self;
    animation.duration = kDuration;
    //animation.timingFunction = UIViewAnimationCurveEaseInOut;
    
    
    
    animation.type = @"pageUnCurl";
    //animation.subtype = kCATransitionFromBottom;
    
    
    NSUInteger blue = [[self.view subviews] indexOfObject:self.blueView];
    NSUInteger green = [[self.view subviews] indexOfObject:self.greenView];
    [self.view exchangeSubviewAtIndex:blue withSubviewAtIndex:green];
    
    [[self.view layer]addAnimation:animation forKey:@"animation"];
}

//响应上翻按钮
-(void)toTopButtonIsPressed:(UIButton *)paramSender
{
    CATransition *animation = [CATransition animation];
    animation.delegate = self;
    animation.duration = kDuration;
    //animation.timingFunction = UIViewAnimationCurveEaseInOut;
    
    
    
    animation.type = @"pageCurl";
    //animation.subtype = kCATransitionFromBottom;
    
    
    //==============view上添加两个图片视图之间的切换，背景图片的切换
    NSUInteger blue = [[self.view subviews] indexOfObject:self.blueView];
    NSUInteger green = [[self.view subviews] indexOfObject:self.greenView];
    [self.view exchangeSubviewAtIndex:blue withSubviewAtIndex:green];
    [[self.view layer]addAnimation:animation forKey:@"animation"];

    
}

//响应左转按钮
-(void)toLeftButtonIsPressed:(UIButton *)paramSender
{
    CATransition *animation = [CATransition animation];
    animation.delegate = self;
    animation.duration = kDuration;
    //animation.timingFunction = UIViewAnimationCurveEaseInOut;
    
    
    
    animation.type = @"oglFlip";//转
    animation.subtype = kCATransitionFromRight;
    
    
    NSUInteger blue = [[self.view subviews] indexOfObject:self.blueView];
    NSUInteger green = [[self.view subviews] indexOfObject:self.greenView];
    [self.view exchangeSubviewAtIndex:blue withSubviewAtIndex:green];
    
    [[self.view layer]addAnimation:animation forKey:@"animation"];
    
    
}

//响应右转按钮
-(void)toRightButtonIsPressed:(UIButton *)paramSender
{
    CATransition *animation = [CATransition animation];
    animation.delegate = self;
    animation.duration = kDuration;
    //animation.timingFunction = UIViewAnimationCurveEaseInOut;
    
    
    
    animation.type = @"oglFlip";
    animation.subtype = kCATransitionFromLeft;
    
    
    NSUInteger blue = [[self.view subviews] indexOfObject:self.blueView];
    NSUInteger green = [[self.view subviews] indexOfObject:self.greenView];
    [self.view exchangeSubviewAtIndex:blue withSubviewAtIndex:green];
    
    [[self.view layer]addAnimation:animation forKey:@"animation"];
    
    
}

//响应淡化按钮
-(void)disappearButtonIsPressed:(UIButton *)paramSender
{
    CATransition *animation = [CATransition animation];
    animation.delegate = self;
    animation.duration = kDuration;
    //animation.timingFunction = UIViewAnimationCurveEaseInOut;
    
    
    
    animation.type = kCATransitionFade;
    //animation.subtype = kCATransitionFromLeft;
    
    
    NSUInteger blue = [[self.view subviews] indexOfObject:self.blueView];
    NSUInteger green = [[self.view subviews] indexOfObject:self.greenView];
    [self.view exchangeSubviewAtIndex:blue withSubviewAtIndex:green];
    
    [[self.view layer]addAnimation:animation forKey:@"animation"];
    
    
}

//响应推送按钮
-(void)pushButtonIsPressed:(UIButton *)paramSender
{
    CATransition *animation = [CATransition animation];
    animation.delegate = self;
    animation.duration = kDuration;
    //animation.timingFunction = UIViewAnimationCurveEaseInOut;
    

    
    animation.type = kCATransitionPush;

    switch (tag)
    {
        case 0:
            animation.subtype = kCATransitionFromLeft;
            break;
        case 1:
            animation.subtype = kCATransitionFromBottom;
            break;
        case 2:
            animation.subtype = kCATransitionFromRight;
            break;
        case 3:
            animation.subtype = kCATransitionFromTop;
            break;
        default:
            break;
    }
    tag +=1;
    if (tag > 3)
    {
        tag = 0;
    }
    
    NSLog(@"tag=:%d",tag);
        
    NSUInteger blue = [[self.view subviews] indexOfObject:self.blueView];
    NSUInteger green = [[self.view subviews] indexOfObject:self.greenView];
    [self.view exchangeSubviewAtIndex:blue withSubviewAtIndex:green];
    
    [[self.view layer]addAnimation:animation forKey:@"animation"];
}

//响应揭开按钮
-(void)revealButtonIsPressed:(UIButton *)paramSender
{
    CATransition *animation = [CATransition animation];
    animation.delegate = self;
    animation.duration = kDuration;
    //animation.timingFunction = UIViewAnimationCurveEaseInOut;
    
    
    
    animation.type = kCATransitionReveal;
    switch (tag)
    {
        case 0:
            animation.subtype = kCATransitionFromLeft;
            break;
        case 1:
            animation.subtype = kCATransitionFromBottom;
            break;
        case 2:
            animation.subtype = kCATransitionFromRight;
            break;
        case 3:
            animation.subtype = kCATransitionFromTop;
            break;
        default:
            break;
    }
    tag +=1;
    if (tag > 3)
    {
        tag = 0;
    }
    
    NSLog(@"tag=:%d",tag);

    //animation.subtype = kCATransitionFromBottom;
    
    
    NSUInteger blue = [[self.view subviews] indexOfObject:self.blueView];
    NSUInteger green = [[self.view subviews] indexOfObject:self.greenView];
    [self.view exchangeSubviewAtIndex:blue withSubviewAtIndex:green];
    
    [[self.view layer]addAnimation:animation forKey:@"animation"];
    
    
}

//响应覆盖按钮
-(void)coverButtonIsPressed:(UIButton *)paramSender
{
    CATransition *animation = [CATransition animation];
    animation.delegate = self;
    animation.duration = kDuration;
    //animation.timingFunction = UIViewAnimationCurveEaseInOut;
    
    
    
    animation.type = kCATransitionMoveIn;
    switch (tag)
    {
        case 0:
            animation.subtype = kCATransitionFromLeft;
            break;
        case 1:
            animation.subtype = kCATransitionFromBottom;
            break;
        case 2:
            animation.subtype = kCATransitionFromRight;
            break;
        case 3:
            animation.subtype = kCATransitionFromTop;
            break;
        default:
            break;
    }
    tag +=1;
    if (tag > 3)
    {
        tag = 0;
    }
    
    NSLog(@"tag=:%d",tag);
    
    //animation.subtype = kCATransitionFromBottom;
    
    
    NSUInteger blue = [[self.view subviews] indexOfObject:self.blueView];
    NSUInteger green = [[self.view subviews] indexOfObject:self.greenView];
    [self.view exchangeSubviewAtIndex:blue withSubviewAtIndex:green];
    
    [[self.view layer]addAnimation:animation forKey:@"animation"];
    
    
}
//响应立方体按钮
-(void)cubeButtonIsPressed:(UIButton *)paramSender
{
    CATransition *animation = [CATransition animation];
    animation.delegate = self;
    animation.duration = kDuration;
    //animation.timingFunction = UIViewAnimationCurveEaseInOut;
    
    
    
    animation.type = @"cube";//立方体
    switch (tag)
    {
        case 0:
            animation.subtype = kCATransitionFromLeft;
            break;
        case 1:
            animation.subtype = kCATransitionFromBottom;
            break;
        case 2:
            animation.subtype = kCATransitionFromRight;
            break;
        case 3:
            animation.subtype = kCATransitionFromTop;
            break;
        default:
            break;
    }
    tag +=1;
    if (tag > 3)
    {
        tag = 0;
    }
    
    NSLog(@"tag=:%d",tag);
    
    //animation.subtype = kCATransitionFromBottom;
    
    
    NSUInteger blue = [[self.view subviews] indexOfObject:self.blueView];
    NSUInteger green = [[self.view subviews] indexOfObject:self.greenView];
    [self.view exchangeSubviewAtIndex:blue withSubviewAtIndex:green];
    
    [[self.view layer]addAnimation:animation forKey:@"animation"];
    
    
}
//响应吸收按钮
-(void)suckEffectButtonIsPressed:(UIButton *)paramSender
{
    CATransition *animation = [CATransition animation];
    animation.delegate = self;
    animation.duration = kDuration;
    //animation.timingFunction = UIViewAnimationCurveEaseInOut;
    
    
    
    animation.type = @"suckEffect";
    //animation.subtype = kCATransitionFromBottom;
    
    
    NSUInteger blue = [[self.view subviews] indexOfObject:self.blueView];
    NSUInteger green = [[self.view subviews] indexOfObject:self.greenView];
    [self.view exchangeSubviewAtIndex:blue withSubviewAtIndex:green];
    
    [[self.view layer]addAnimation:animation forKey:@"animation"];
    
    
}

//响应旋转按钮
-(void)oglFlipButtonIsPressed:(UIButton *)paramSender
{
    CATransition *animation = [CATransition animation];
    animation.delegate = self;
    animation.duration = kDuration;
    //animation.timingFunction = UIViewAnimationCurveEaseInOut;
    
    
    
    animation.type = @"oglFlip";
    switch (tag)
    {
        case 0:
            animation.subtype = kCATransitionFromLeft;
            break;
        case 1:
            animation.subtype = kCATransitionFromBottom;
            break;
        case 2:
            animation.subtype = kCATransitionFromRight;
            break;
        case 3:
            animation.subtype = kCATransitionFromTop;
            break;
        default:
            break;
    }
    tag +=1;
    if (tag > 3)
    {
        tag = 0;
    }
    
    NSLog(@"tag=:%d",tag);
    
    //animation.subtype = kCATransitionFromBottom;
    
    
    NSUInteger blue = [[self.view subviews] indexOfObject:self.blueView];
    NSUInteger green = [[self.view subviews] indexOfObject:self.greenView];
    [self.view exchangeSubviewAtIndex:blue withSubviewAtIndex:green];
    
    [[self.view layer]addAnimation:animation forKey:@"animation"];
    
    
}

//响应波纹按钮
-(void)rippleEffectButtonIsPressed:(UIButton *)paramSender
{
    CATransition *animation = [CATransition animation];
    animation.delegate = self;
    animation.duration = kDuration;
    //animation.timingFunction = UIViewAnimationCurveEaseInOut;
    
    
    
    animation.type = @"rippleEffect";
    //animation.subtype = kCATransitionFromBottom;
    
    
    NSUInteger blue = [[self.view subviews] indexOfObject:self.blueView];
    NSUInteger green = [[self.view subviews] indexOfObject:self.greenView];
    [self.view exchangeSubviewAtIndex:blue withSubviewAtIndex:green];
    
    [[self.view layer]addAnimation:animation forKey:@"animation"];
    
    
}
//响应翻页按钮
-(void)pageCurlButtonIsPressed:(UIButton *)paramSender
{
    CATransition *animation = [CATransition animation];
    animation.delegate = self;
    animation.duration = kDuration;
    //animation.timingFunction = UIViewAnimationCurveEaseInOut;
    
    
    
    animation.type = @"pageCurl";
    switch (tag)
    {
        case 0:
            animation.subtype = kCATransitionFromLeft;
            break;
        case 1:
            animation.subtype = kCATransitionFromBottom;
            break;
        case 2:
            animation.subtype = kCATransitionFromRight;
            break;
        case 3:
            animation.subtype = kCATransitionFromTop;
            break;
        default:
            break;
    }
    tag +=1;
    if (tag > 3)
    {
        tag = 0;
    }
    
    NSLog(@"tag=:%d",tag);
    
    //animation.subtype = kCATransitionFromBottom;
    
    
    NSUInteger blue = [[self.view subviews] indexOfObject:self.blueView];
    NSUInteger green = [[self.view subviews] indexOfObject:self.greenView];
    [self.view exchangeSubviewAtIndex:blue withSubviewAtIndex:green];
    
    [[self.view layer]addAnimation:animation forKey:@"animation"];
    
    
}

//响应反翻页按钮
-(void)pageUnCurlButtonIsPressed:(UIButton *)paramSender
{
    CATransition *animation = [CATransition animation];
    animation.delegate = self;
    animation.duration = kDuration;
   
    
    
    
    animation.type = @"pageUnCurl";
    switch (tag)
    {
        case 0:
            animation.subtype = kCATransitionFromLeft;
            break;
        case 1:
            animation.subtype = kCATransitionFromBottom;
            break;
        case 2:
            animation.subtype = kCATransitionFromRight;
            break;
        case 3:
            animation.subtype = kCATransitionFromTop;
            break;
        default:
            break;
    }
    tag +=1;
    if (tag > 3)
    {
        tag = 0;
    }
    
    NSLog(@"tag=:%d",tag);
    
    //animation.subtype = kCATransitionFromBottom;
    
    
    NSUInteger blue = [[self.view subviews] indexOfObject:self.blueView];
    NSUInteger green = [[self.view subviews] indexOfObject:self.greenView];
    [self.view exchangeSubviewAtIndex:blue withSubviewAtIndex:green];
    
    [[self.view layer]addAnimation:animation forKey:@"animation"];
    
    
}
//响应镜头开按钮
-(void)cameraIrisHollowOpenButtonIsPressed:(UIButton *)paramSender
{
    CATransition *animation = [CATransition animation];
    animation.delegate = self;
    animation.duration = kDuration;
    //animation.timingFunction = UIViewAnimationCurveEaseInOut;
    
    
    
    animation.type = @"cameraIrisHollowOpen";
    //animation.subtype = kCATransitionFromBottom;
    
    
    NSUInteger blue = [[self.view subviews] indexOfObject:self.blueView];
    NSUInteger green = [[self.view subviews] indexOfObject:self.greenView];
    [self.view exchangeSubviewAtIndex:blue withSubviewAtIndex:green];
    
    [[self.view layer]addAnimation:animation forKey:@"animation"];
    
    
}

//响应镜头关按钮
-(void)cameraIrisHollowCloseButtonIsPressed:(UIButton *)paramSender
{
    CATransition *animation = [CATransition animation];
    animation.delegate = self;
    animation.duration = kDuration;
    //animation.timingFunction = UIViewAnimationCurveEaseInOut;
    
    
    
    animation.type = @"cameraIrisHollowClose";
    //animation.subtype = kCATransitionFromBottom;
    
    
    NSUInteger blue = [[self.view subviews] indexOfObject:self.blueView];
    NSUInteger green = [[self.view subviews] indexOfObject:self.greenView];
    [self.view exchangeSubviewAtIndex:blue withSubviewAtIndex:green];
    
    [[self.view layer]addAnimation:animation forKey:@"animation"];
    
    
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
