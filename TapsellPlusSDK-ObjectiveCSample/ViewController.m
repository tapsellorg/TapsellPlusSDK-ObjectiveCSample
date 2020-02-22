//
//  ViewController.m
//  TapsellPlusSDK-ObjectiveCSample
//
//  Created by Mahdi Toori on 4/17/1398 AP.
//  Copyright © 1398 Tapsell. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
    @property (weak, nonatomic) IBOutlet TapsellPlusNativeBannerView *nativeBannerView;
    @property (weak, nonatomic) IBOutlet TapsellPlusBannerView *bannerView;
    
    @end

@implementation ViewController
    
    NSString* interstitialBannerId   = @"5e3915c0a609650001935c90"; //tapsell
    NSString* rewardedVideoId        = @"5e3917754535200001dee755"; //tapsell
    NSString* nativeBannerId         = @"5e39173d4535200001dee754"; //tapsell
    NSString* bannerId               = @"5e391757a609650001935c93"; //tapsell

- (IBAction)getInterstitialBanner:(UIButton *)sender {
    [TapsellPlus requestInterstitialAd:interstitialBannerId :self];
}
    
- (IBAction)getRewardedVideo:(UIButton *)sender {
    [TapsellPlus requestRewardedVideoAd:rewardedVideoId :self];
}

- (IBAction)getBanner:(UIButton *)sender {
    [TapsellPlus requestBannerAd:bannerId :_bannerView :self];
}

- (IBAction)getNativeBanner:(UIButton *)sender {
    [TapsellPlus requestNativeBannerAd:nativeBannerId :_nativeBannerView :self];
}
    
    
    
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _nativeBannerView.hidden = YES;
    _nativeBannerView.titleLabelTag = 100;
    _nativeBannerView.descriptionLabelTag = 101;
    _nativeBannerView.logoImageTag = 102;
    _nativeBannerView.mainImageTag = 103;
    _nativeBannerView.callToActionButtonTag = 104;
    
    _bannerView.size = TapsellPlusBannerSizeW320H50;
    _bannerView.rootControlView = self;
    
}

    
- (void)onError:(NSString * _Nonnull)zoneId :(NSInteger)code {
    NSLog(@"onError %ld",(long)code);
}
    
- (void)onReady:(TapsellPlusAdItem * _Nonnull)ad {
    [ad show:self :self];
}
    
- (void)onAdClosed:(NSString * _Nonnull)zoneId :(BOOL)completed {
    NSLog(@"on ad closed");
}
    
- (void)onAdOpened:(NSString * _Nonnull)zoneId {
    NSLog(@"on ad opened");
}
    
- (void)onReward:(NSString * _Nonnull)zoneId {
    NSLog(@"on reward");
}
    
- (void)onRequestFilled:(NSString * _Nonnull)zoneId {
    NSLog(@"onRequestFilled");
}
    
- (void)onSuccess:(UIView * _Nonnull)ad {
    _nativeBannerView.hidden = NO;
}
    

@end
