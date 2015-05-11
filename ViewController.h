//
//  ViewController.h
//  MultipleStyleChangeView
//
//  Created by  on 13-9-16.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    int tag ;
    
}

@property (nonatomic , strong) UIImageView *blueView;
@property (nonatomic , strong) UIImageView *greenView;
@property (nonatomic , assign) NSInteger typeID;  
@end
