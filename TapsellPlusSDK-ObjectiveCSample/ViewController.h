//
//  ViewController.h
//  TapsellPlusSDK-ObjectiveCSample
//
//  Created by Mahdi Toori on 4/17/1398 AP.
//  Copyright © 1398 Tapsell. All rights reserved.
//

#import <UIKit/UIKit.h>
@import TapsellPlus;
@import TapsellPlusTapsellAdapter;

@interface ViewController : UIViewController < TapsellPlusRequestAdDelegate ,
    TapsellPlusShowAdDelegate , TapsellPlusBannerDelegate , TapsellPlusNativeBannerDelegate >


@end

