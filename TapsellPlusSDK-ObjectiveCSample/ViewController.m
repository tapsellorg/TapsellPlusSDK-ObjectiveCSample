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
    @property (weak, nonatomic) IBOutlet TapsellPlusBannerView *bannerView2;
    
    @end

@implementation ViewController
    
    NSString* interstitialBanner1Id   = @"5d2209532cf21e0001a90c79"; //tapsell
    NSString* interstitialBanner2Id   = @"5d220b2155028c0001e810af"; //admob
    NSString* rewardedVideo1Id        = @"5d2207582cf21e0001a90c78"; //tapsell
    NSString* rewardedVideo2Id        = @"5d2207bc55028c0001e810ae"; //admob
    NSString* rewardedVideo3Id        = @"5d230bc36b8bf10001a96d5c"; //unityads
    NSString* rewardedVideo4Id        = @"5d230c2e6b8bf10001a96d5d"; //chartboost
    NSString* nativeBannerId          = @"5d220b3b55028c0001e810b0"; //tapsell
    NSString* banner1Id               = @"5d220b5655028c0001e810b1"; //tapsell
    NSString* banner2Id               = @"5d220bd32cf21e0001a90c7a"; //admob

- (IBAction)getInterstitialBanner1:(UIButton *)sender {
    [TapsellPlus requestInterstitialAd:interstitialBanner1Id :self];
}
- (IBAction)getInterstitialBanner2:(UIButton *)sender {
    [TapsellPlus requestInterstitialAd:interstitialBanner2Id :self];
}
    
- (IBAction)getRewardedVideo1:(UIButton *)sender {
    [TapsellPlus requestRewardedVideoAd:rewardedVideo1Id :self];
}
- (IBAction)getRewardedVideo2:(UIButton *)sender {
    [TapsellPlus requestRewardedVideoAd:rewardedVideo2Id :self];
}
- (IBAction)getRewardedVideo3:(UIButton *)sender {
    [TapsellPlus requestRewardedVideoAd:rewardedVideo3Id :self];
}
- (IBAction)getRewardedVideo4:(UIButton *)sender {
    [TapsellPlus requestRewardedVideoAd:rewardedVideo4Id :self];
}

- (IBAction)getBanner1:(UIButton *)sender {
    [TapsellPlus requestBannerAd:banner1Id :_bannerView :self];
}
- (IBAction)getBanner2:(UIButton *)sender {
    [TapsellPlus requestBannerAd:banner2Id :_bannerView2 :self];
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
    
    _bannerView2.size = TapsellPlusBannerSizeW320H50;
    _bannerView2.rootControlView = self;
    
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
