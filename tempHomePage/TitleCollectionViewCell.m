//
//  TitleCollectionViewCell.m
//  TitlesCollection
//
//  Created by cloud on 15/11/20.
//  Copyright © 2015年 zhuoxun. All rights reserved.
//

#import "TitleCollectionViewCell.h"

@implementation TitleCollectionViewCell

- (void)awakeFromNib {
    [self.titleLable.layer setMasksToBounds:YES];
    self.titleLable.layer.cornerRadius = 5;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        // 初始化时加载collectionCell.xib文件
        NSArray *arrayOfViews = [[NSBundle mainBundle] loadNibNamed:@"TitleCollectionViewCell" owner:self options:nil];
        
        // 如果路径不存在，return nil
        if (arrayOfViews.count < 1)
        {
            return nil;
        }
        // 如果xib中view不属于UICollectionViewCell类，return nil
        if (![[arrayOfViews objectAtIndex:0] isKindOfClass:[UICollectionViewCell class]])
        {
            return nil;
        }
        // 加载nib
        self = [arrayOfViews objectAtIndex:0];
    }
    
    return self;
}

//- (void)layoutSubviews {
//    [super layoutSubviews];
//
//
//}

- (void)setTitleModel:(XKIndustryTitleModel *)titleModel {
    _titleModel = titleModel;
    
    self.titleLable.text = _titleModel.titile;
    NSLog(@"Celltext:%@ titlelabel -- status %d",self.titleLable.text,_titleModel.isTitel);
    if (_titleModel.isTitel) {
        self.titleLable.backgroundColor = BackColor;
    }else {
        self.titleLable.backgroundColor = TitleColor;
    }
}

@end
