//
//  TitleCollectionViewCell.h
//  TitlesCollection
//
//  Created by cloud on 15/11/20.
//  Copyright © 2015年 zhuoxun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XKIndustryTitleModel.h"

@interface TitleCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLable;

@property (nonatomic, strong) XKIndustryTitleModel *titleModel;


@end
