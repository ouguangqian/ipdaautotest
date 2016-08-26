# language: zh-CN
@video2test
功能: 视频功能验证

      @video_down_voice_test
    场景: 播放视频时，ivoka“降低声音”，会切换到音乐界面
        当< 打开九宫格界面
        当< 打开视频应用
        当< 打开我的视频
        当< 播放本地视频
          |video_name|
          |MOV格式     |
        当< 播放音频文件
          |voice_file|
          |你好语音助理.m4a|
        当< 延时
          |sleep_time|
          |1         |
        当< 播放音频文件
          |voice_file|
          |降低声音.m4a|
        当< 延时
          |sleep_time|
          |3         |
        那么< 验证当前应用
          |chk_app_name|
          |视频     |

        @video_call_test
    场景: 视频播放中，拨号10086后，系统弹出“NetVideoUI无响应”显示
        当< 打开九宫格界面
        当< 打开视频应用
        当< 打开我的视频
        当< 播放本地视频
            |video_name|
            |MOV格式     |
        当< 手机拨打号码
            |phone_no|
            |10086   |
        当< 延时
          |sleep_time|
          |10         |
        当< 手机挂断电话
        那么< 验证视频是否播放
          |chk_is_playing|
          |true          |

    @search_video_from_net_test
    场景: 网络搜索视频并播放
      当< 打开九宫格界面
      当< 打开视频应用
      当< 打开视频搜索
      当< 输入视频搜索关键字
        |keyword|
        |熊出没    |
      当< 从搜索结果中播放指定视频
        |video_name|
        |熊出没    |
      那么< 验证视频播放名称一致
        |chk_name|
        |熊出没     |
      那么< 验证视频是否播放
        |chk_is_playing|
        |true          |

    @play_local_video_test
    场景: 播放本地系统自带视频
      当< 打开九宫格界面
      当< 打开视频应用
      当< 打开我的视频
      当< 播放本地视频
        |video_name|
        |IPDA     |
      那么< 验证视频是否播放
        |chk_is_playing|
        |true          |

    @play_local_video_flv_test
    场景: 播放本地FLV视频
      当< 打开九宫格界面
      当< 打开视频应用
      当< 打开我的视频
      当< 播放本地视频
        |video_name|
        |FLV格式     |
      那么< 验证视频播放名称一致
        |chk_name|
        |FLV格式     |
      那么< 验证视频是否播放
        |chk_is_playing|
        |true          |

    @play_local_video_mov_test
    场景: 播放本地MOV视频
      当< 打开九宫格界面
      当< 打开视频应用
      当< 打开我的视频
      当< 播放本地视频
        |video_name|
        |MOV格式     |
      那么< 验证视频播放名称一致
        |chk_name|
        |MOV格式     |
      那么< 验证视频是否播放
        |chk_is_playing|
        |true          |

    @play_local_video_mp4_test
    场景: 播放本地MP4视频
      当< 打开九宫格界面
      当< 打开视频应用
      当< 打开我的视频
      当< 播放本地视频
        |video_name|
        |MP4格式     |
      那么< 验证视频播放名称一致
        |chk_name|
        |MP4格式     |
      那么< 验证视频是否播放
        |chk_is_playing|
        |true          |

    @play_local_video_avi_test
    场景: 播放本地AVI视频
      当< 打开九宫格界面
      当< 打开视频应用
      当< 打开我的视频
      当< 播放本地视频
        |video_name|
        |AVI格式     |
      那么< 验证视频播放名称一致
        |chk_name|
        |AVI格式     |
      那么< 验证视频是否播放
        |chk_is_playing|
        |true          |

    @clear_search_keyword_test
    场景: 清空视频搜索框，验证界面返回搜索主界面
      当< 打开九宫格界面
      当< 打开视频应用
      当< 打开视频搜索
      当< 输入视频搜索关键字
        |keyword|
        |熊出没  |
      当< 延时
        |sleep_time|
        |30         |
      当< 清空视频搜索框并验证

    @play_from_playHis_test
    场景: 从播放记录中播放视频
      当< 打开九宫格界面
      当< 打开视频应用
      当< 打开视频搜索
      当< 输入视频搜索关键字
        |keyword|
        |熊出没    |
      当< 从搜索结果中播放指定视频
        |video_name|
        |熊出没    |
      当< 延时
        |sleep_time|
        |10         |
    #  从播放记录中播放
      当< 回到系统主界面
      当< 打开九宫格界面
      当< 打开视频应用
      当< 打开我的视频
      当< 从播放记录中播放指定视频
        |video_name|
        |熊出没     |
      那么< 验证视频播放名称一致
        |chk_name|
        |熊出没     |
      那么< 验证视频是否播放
        |chk_is_playing|
        |true          |

      @play_from_hot_to_his_test
    场景: 验证视频搜索中第一个搜索记录为最近搜索的关键词
      当< 打开九宫格界面
      当< 打开视频应用
      当< 打开视频搜索
      当< 搜索热门搜索视频
        |o_result|
        |o_video_name|
      当< 回到系统主界面
      当< 打开九宫格界面
      当< 打开视频应用
      当< 打开视频搜索
      当< 搜索搜索记录视频
        |o_result|
        |o_video_name1|
      那么< 验证两个对象值
        |param1|option|param2|
        |o_video_name|==|o_video_name1|

        @play_find_video_test
    场景: 播放我的发现视频并验证视频正常播放
      当< 打开九宫格界面
      当< 打开视频应用
      当< 打开我的发现
      当< 随机播放发现视频
        |o_result|
        |o_video_name|
      那么< 验证视频播放名称一致
        |chk_name|
        |o_video_name     |
      那么< 验证视频是否播放
        |chk_is_playing|
        |true          |
      那么< 验证放音通道一致
        |chk_tinymix|
        |ASP MEDIA Route|

        @aiqiyi_recommend_test
    场景: 播放爱奇艺推荐视频
      当< 打开九宫格界面
      当< 打开视频应用
      当< 打开爱奇艺
      当< 随机播放爱奇艺视频
        |o_result|
        |o_video_name|
      那么< 验证视频播放名称一致
        |chk_name|
        |o_video_name     |
      那么< 验证视频是否播放
        |chk_is_playing|
        |true          |
      那么< 验证放音通道一致
        |chk_tinymix|
        |ASP MEDIA Route|
      当< 回到系统主界面
      当< 打开九宫格界面
      当< 打开视频应用
      当< 打开爱奇艺
      当< 获取爱奇艺观看记录
        |o_result|
        |o_play_his|
      当< 打开我的视频
      当< 获取我的视频播放记录
        |o_result|
        |o_play_his1|
      那么< 验证两个对象值
        |param1|option|param2|
        |o_video_name|==|o_play_his|
      那么< 验证两个对象值
        |param1|option|param2|
        |o_video_name|==|o_play_his1|











