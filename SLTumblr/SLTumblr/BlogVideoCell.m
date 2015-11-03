//
//  BlogVideoCell.m
//  SLTumblr
//
//  Created by SL🐰鱼子酱 on 15/11/1.
//  Copyright © 2015年 SL🐰鱼子酱. All rights reserved.
//

#import "BlogVideoCell.h"
#import "UIImageView+WebCache.h"
#import "VideoModel.h"
#import "VideoTypeView.h"
#import "MainView.h"


@implementation BlogVideoCell

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithKind:@"blogPosts" type:@"video"];
    if (self) {
    }
    return self;
}

- (void)setDataModel:(VideoModel *)dataModel {
    [super setDataModel:dataModel];
    
    // type audio
    VideoTypeView * videoView = (VideoTypeView *)[self.mainView viewWithTag:100006];
    if (dataModel.thumbnail_url.length > 0) {
        [videoView.thumbnailView sd_setImageWithURL:[NSURL URLWithString:dataModel.thumbnail_url]];
        videoView.thumbnail_height = dataModel.thumbnail_height ;
    }
    
    
    
    if (dataModel.video_url.length > 0) {
        videoView.video_url = dataModel.video_url;
    }
    else {
        videoView.embed = dataModel.embed;
    }
    videoView.captionLabel.text = dataModel.caption;
    
}



@end