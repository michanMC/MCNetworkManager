//
//  ViewController.m
//  MCNetworkManager
//
//  Created by MC on 16/4/14.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "ViewController.h"
#import "MCNetworkManager.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MCNetworkManager *  Manager = [MCNetworkManager instanceManager];
     NSLog(@">>>>>>%lld",[Manager totalCacheSize]);
    /*!
     *
     *  GET请求接口，若前面不指定baseurl，可传完整的url
     *
     *  @param url     接口路径，如/path/getArticleList
     *  @param refreshCache 是否刷新缓存。由于请求成功也可能没有数据，对于业务失败，只能通过人为手动判断
     *  @param params  接口中所需要的拼接参数，如@{"categoryid" : @(12)}
     *  @param completeBlock 接口成功请求到数据的回调
     *  @param errorBlock    接口请求数据失败的回调
     *
     */

    
    
    /*
    [Manager getWithUrl:@"Msg/unfriendShowRecommendMessage" refreshCache:YES success:^(id resultDic) {
        NSLog(@"resultDic == %@",resultDic);
    } fail:^(NSURLSessionDataTask *operation, NSError *error, NSString *description) {
        
    }];
     */
    
    
    
  /*************************************/
    
    /*
     *多一个params参数
     */
    
    
    /*
    [Manager getWithUrl:@"Msg/unfriendShowRecommendMessage" refreshCache:YES params:@{ @"page":@(2)}success:^(id resultDic) {
        NSLog(@"resultDic == %@",resultDic);

    } fail:^(NSURLSessionDataTask *operation, NSError *error, NSString *description) {
        NSLog(@"%@",description);
    }];
    */
    
    
    /***************************************/
    
    /*
     *带有params参数
     *带进度回调
     *  @param bytesRead                 已下载的大小
     *  @param totalBytesRead            文件总大小
     */

    
    /*
    [Manager getWithUrl:@"Msg/unfriendShowRecommendMessage" refreshCache:YES params:@{ @"page":@(2)} progress:^(int64_t bytesRead, int64_t totalBytesRead) {
        NSLog(@"bytesRead  ==== %lld",bytesRead);
        NSLog(@"totalBytesRead ===%lld",totalBytesRead);
       
    } success:^(id resultDic) {
        NSLog(@"resultDic == %@",resultDic);

    } fail:^(NSURLSessionDataTask *operation, NSError *error, NSString *description) {
        NSLog(@"%@",description);

    }];
    */
    
    
    
    /*************************************/
    
    
    
    
    
    /*!
     *
     *  POST请求接口，若不指定baseurl，可传完整的url
     *
     *  @param url     接口路径，如/path/getArticleList
     *  @param params  接口中所需的参数，如@{"categoryid" : @(12)}
     *  @param completeBlock 接口成功请求到数据的回调
     *  @param errorBlock    接口请求数据失败的回调
     *
     */
   
    
    
    [Manager postWithUrl:@"http://203.195.168.151:9000/hedgehogTravels/api/travel/query.json" refreshCache:YES params:@{@"lat":@(0),@"lng":@(0),@"page":@(1)} success:^(id resultDic) {
        NSLog(@"resultDic == %@",resultDic);

    } fail:^(NSURLSessionDataTask *operation, NSError *error, NSString *description) {
        NSLog(@"%@",description);

    }];

    
    
    /*****************************/
    
    /*
     *带进度回调
     *  @param bytesRead                 已下载的大小
     *  @param totalBytesRead            文件总大小

     */
    /*
    [Manager postWithUrl:@"http://203.195.168.151:9000/hedgehogTravels/api/travel/query.json" refreshCache:YES params:@{@"lat":@(0),@"lng":@(0),@"page":@(1)} progress:^(int64_t bytesRead, int64_t totalBytesRead) {
        NSLog(@"bytesRead  ==== %lld",bytesRead);
        NSLog(@"totalBytesRead ===%lld",totalBytesRead);
    } success:^(id resultDic) {
        NSLog(@"resultDic == %@",resultDic);

    } fail:^(NSURLSessionDataTask *operation, NSError *error, NSString *description) {
        NSLog(@"%@",description);

    }];
    */
    /****************************/
    
    
    
    
    /**
     *
     *	图片上传接口，若不指定baseurl，可传完整的url
     *
     *	@param image			图片对象
     *	@param url				上传图片的接口路径，如/path/images/
     *	@param filename		给图片起一个名字，默认为当前日期时间,格式为"yyyyMMddHHmmss"，后缀为`jpg`
     *	@param name				与指定的图片相关联的名称，这是由后端写接口的人指定的，如imagefiles
     *	@param mimeType		默认为image/jpeg
     *	@param parameters	参数
     *	@param progress		上传进度
     *	@param completeBlock		上传成功回调
     *	@param errorBlock				上传失败回调
     *
     *  @param bytesWritten              已上传的大小
     *  @param totalBytesWritten         总上传大小
     */
    
    /*
    [Manager uploadWithImage:[UIImage imageNamed:@"Default-568"] url:@"http://203.195.168.151:9000/hedgehogTravels/api/travel/query.json" filename:@"img.jpg" name:@"imagefiles" mimeType:@"image/jpeg" parameters:nil progress:^(int64_t bytesWritten, int64_t totalBytesWritten) {
        NSLog(@"bytesWritten  ==== %lld",bytesWritten);
        NSLog(@"totalBytesWritten ===%lld",totalBytesWritten);
    } success:^(id resultDic) {
        NSLog(@"resultDic == %@",resultDic);

    } fail:^(NSURLSessionDataTask *operation, NSError *error, NSString *description) {
        NSLog(@"%@",description);

    }];
    
    */
    
    
    /****************************/
    
    /**
     *
     *	上传文件操作
     *
     *	@param url						上传路径
     *	@param uploadingFile	待上传文件的路径
     *	@param progress			上传进度
     *	@param completeBlock				上传成功回调
     *	@param errorBlock					上传失败回调
     *
     */
    /*
    [Manager uploadFileWithUrl:@"http://203.195.168.151:9000/hedgehogTravels/api/travel/query.json" uploadingFile:@"img" progress:^(int64_t bytesWritten, int64_t totalBytesWritten) {
        NSLog(@"bytesWritten  ==== %lld",bytesWritten);
        NSLog(@"totalBytesWritten ===%lld",totalBytesWritten);
    } success:^(id resultDic) {
        NSLog(@"resultDic == %@",resultDic);

    } fail:^(NSURLSessionDataTask *operation, NSError *error, NSString *description) {
        NSLog(@"%@",description);

    }];
*/
    /**************下载文件*********************/
     /*
     *
     *  下载文件
     *
     *  @param url           下载URL
     *  @param saveToPath    下载到哪个路径下
     *  @param progressBlock 下载进度
     *  @param completeBlock       下载成功后的回调
     *  @param errorBlock       下载失败后的回调
     */
    
    /*
  NSString *paths = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0] stringByAppendingString:@"/qidong123123.mp3"];
//    NSString *filePath =[paths stringByAppendingPathComponent:@"qidong123123"];
    NSFileManager *fileManager = [NSFileManager defaultManager];
   BOOL result = [fileManager fileExistsAtPath:paths];
//
    NSLog(@"paths ===%@",paths);
    
    [Manager downloadWithUrl:@"http://fdfs.xmcdn.com/group16/M01/D7/64/wKgDalaArHuAFSLDAkFKn7aTV6w062.mp3" saveToPath:paths progress:^(int64_t bytesRead, int64_t totalBytesRead) {
        NSLog(@"bytesWritten  ==== %lld",bytesRead);
        NSLog(@"totalBytesWritten ===%lld",totalBytesRead);

    } success:^(id resultDic) {
        NSLog(@"resultDic == %@",resultDic);

    } failure:^(NSURLSessionDataTask *operation, NSError *error, NSString *description) {
        NSLog(@"%@",description);

    }];

*/
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
